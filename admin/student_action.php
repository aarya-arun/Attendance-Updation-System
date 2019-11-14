<?php

//student_action.php

include('database_connection.php');

session_start();

if(isset($_POST["action"]))
{
	if($_POST["action"] == "fetch")
	{
		$query = "
		SELECT * FROM tbl_student
		INNER JOIN tbl_grade
		ON tbl_grade.grade_id = tbl_student.student_grade_id
		";

		if(isset($_POST["search"]["value"]))
		{
			$query .= '
			WHERE tbl_student.student_name LIKE "%'.$_POST["search"]["value"].'%"
			OR tbl_student.student_roll_number LIKE "%'.$_POST["search"]["value"].'%"
			OR tbl_student.student_dob LIKE "%'.$_POST["search"]["value"].'%"
			OR tbl_grade.grade_name LIKE "%'.$_POST["search"]["value"].'%"
			OR tbl_student.student_emailid LIKE "%'.$_POST["search"]["value"].'%"
			';
		}

		if(isset($_POST["order"]))
		{
			$query .= '
			ORDER BY '.$_POST['order']['0']['column'].' '.$_POST['order']['0']['dir'].'
			';
		}
		else
		{
			$query .= '
			ORDER BY tbl_student.student_id DESC
			';
		}
		if($_POST["length"] != -1)
		{
			$query .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
		}

		$statement = $connect->prepare($query);

		$statement->execute();
		$result = $statement->fetchAll();
		$data = array();
		$filtered_rows = $statement->rowCount();
		foreach($result as $row)
		{
			$sub_array = array();
			$sub_array[] = $row["student_name"];
			$sub_array[] = $row["student_roll_number"];
			$sub_array[] = $row["student_dob"];
			$sub_array[] = $row["grade_name"];
			$sub_array[] = $row["student_emailid"];
			$sub_array[] = '<button type="button" name="view_student" class="btn btn-info btn-sm view_student" id="'.$row["student_id"].'">View</button>';
			$sub_array[] = '<button type="button" name="edit_student" class="btn btn-primary btn-sm edit_student" id="'.$row["student_id"].'">Edit</button>';
			$sub_array[] = '<button type="button" name="delete_student" class="btn btn-danger btn-sm delete_student" id="'.$row["student_id"].'">Delete</button>';
			$data[] = $sub_array;
		}
		$output = array(
			"draw"				=>	intval($_POST["draw"]),
			"recordsTotal"		=> 	$filtered_rows,
			"recordsFiltered"	=>	get_total_records($connect, 'tbl_student'),
			"data"				=>	$data
		);

		echo json_encode($output);
	}

	if($_POST["action"] == 'Add' || $_POST["action"] == "Edit")
	{
		$student_name = '';
		$student_roll_number = '';
		$student_dob = '';
		$student_grade_id = '';
		$student_emailid = '';
		$student_password = '';
		$error_student_name = '';
		$error_student_roll_number = '';
		$error_student_dob = '';
		$error_student_grade_id = '';
		$error_student_emailid = '';
		$error_student_password = '';
		$error = 0;
		if(empty($_POST["student_name"]))
		{
			$error_student_name = 'Student Name is required';
			$error++;
		}
		else
		{
			$student_name = $_POST["student_name"];
		}
		if(empty($_POST["student_roll_number"]))
		{
			$error_student_roll_number = 'Student SRN is required';
			$error++;
		}
		else
		{
			$student_roll_number = $_POST["student_roll_number"];
		}
		if(empty($_POST["student_dob"]))
		{
			$error_student_dob = 'Student Date of Birth is required';
			$error++;
		}
		else
		{
			$student_dob = $_POST["student_dob"];
		}
		if(empty($_POST["student_grade_id"]))
		{
			$error_student_grade_id = "Grade is required";
			$error++;
		}
		else
		{
			$student_grade_id = $_POST["student_grade_id"];
		}
		if($_POST["action"] == "Add")
		{
			if(empty($_POST["student_emailid"]))
			{
				$error_student_emailid = 'Email Address is required';
				$error++;
			}
			else
			{
				if(!filter_var($_POST["student_emailid"], FILTER_VALIDATE_EMAIL))
				{
					$error_student_emailid = 'Invalid email format';
					$error++;
				}
				else
				{
					$student_emailid = $_POST["student_emailid"];
				}
			}
			if(empty($_POST["student_password"]))
			{
				$error_student_password = "Password is required";
				$error++;
			}
			else
			{
				$student_password = $_POST["student_password"];
			}
		}
		if($error > 0)
		{
			$output = array(
				'error'							=>	true,
				'error_student_name'			=>	$error_student_name,
				'error_student_roll_number'		=>	$error_student_roll_number,
				'error_student_dob'			=>	$error_student_dob,
				'error_student_grade_id'		=>	$error_student_grade_id
				'error_student_emailid'			=>	$error_student_emailid,
				'error_student_password'		=>	$error_student_password,
			);
		}
		else
		{
			if($_POST["action"] == 'Add')
			{
				$data = array(
					':student_name'		=>	$student_name,
					':student_roll_number'	=>	$student_roll_number,
					':student_dob'		=>	$student_dob,
					':student_grade_id'	=>	$student_grade_id
					':student_emailid'		=>	$student_emailid,
					':student_password'		=>	password_hash($student_password, PASSWORD_DEFAULT),
				);
				$query = "
				INSERT INTO tbl_student
				(student_name, student_roll_number, student_dob, student_grade_id, student_emailid, student_password)
				SELECT * FROM (SELECT :student_name, :student_roll_number, :student_dob, :student_grade_id, :student_emailid, :student_password) as temp
				WHERE NOT EXISTS (
					SELECT student_emailid FROM tbl_student WHERE student_emailid = :student_emailid
				) LIMIT 1
				";

				$statement = $connect->prepare($query);
				if($statement->execute($data))
				{
					if($statement->rowCount() > 0)
					{
						$output = array(
							'success'		=>	'Data Added Successfully',
						);
					}
					else
					{
						$output = array(
							'error'					=>	true,
							'error_student_emailid'	=>	'Email Already Exists'
						);
					}
				}
			}
			if($_POST["action"] == "Edit")
			{
				$data = array(
					':student_name'			=>	$student_name,
					':student_roll_number'	=>	$student_roll_number,
					':student_dob'			=>	$student_dob,
					':student_grade_id'		=>	$student_grade_id,
					':student_id'			=>	$_POST["student_id"]
				);
				$query = "
				UPDATE tbl_student
				SET student_name = :student_name,
				student_roll_number = :student_roll_number,
				student_dob = :student_dob,
				student_grade_id = :student_grade_id
				WHERE student_id = :student_id
				";
				$statement = $connect->prepare($query);
				if($statement->execute($data))
				{
					$output = array(
						'success'		=>	'Data Edited Successfully',
					);
				}
			}
		}
		echo json_encode($output);
	}

	if($_POST["action"] == "single_fetch")
	{
		$query = "
		SELECT * FROM tbl_student
		INNER JOIN tbl_grade
		ON tbl_grade.grade_id = tbl_student.student_grade_id
		WHERE tbl_student.student_id = '".$_POST["student_id"]."'";
		$statement = $connect->prepare($query);
		if($statement->execute())
		{
			$result = $statement->fetchAll();
			$output = '
			<div class="row">
			';
			foreach($result as $row)
			{
				$output .= '
				<div class="col-md-9">
					<table class="table">
						<tr>
							<th>Name</th>
							<td>'.$row["student_name"].'</td>
						</tr>
						<tr>
							<th>Email Address</th>
							<td>'.$row["student_emailid"].'</td>
						</tr>
						<tr>
							<th>Date of Birth</th>
							<td>'.$row["student_dob"].'</td>
						</tr>
						<tr>
							<th>Grade</th>
							<td>'.$row["grade_name"].'</td>
						</tr>
					</table>
				</div>
				';
			}
			$output .= '</div>';
			echo $output;
		}
	}


	if($_POST["action"] == "edit_fetch")
	{
		$query = "
		SELECT * FROM tbl_student
		WHERE student_id = '".$_POST["student_id"]."'
		";
		$statement = $connect->prepare($query);
		if($statement->execute())
		{
			$result = $statement->fetchAll();
			foreach($result as $row)
			{
				$output["student_name"] = $row["student_name"];
				$output["student_roll_number"] = $row["student_roll_number"];
				$output["student_dob"] = $row["student_dob"];
				$output["student_grade_id"] = $row["student_grade_id"];
				$output["student_id"] = $row["student_id"];
			}
			echo json_encode($output);
		}
	}
	if($_POST["action"] == "delete")
	{
		$query = "
		DELETE FROM tbl_student
		WHERE student_id = '".$_POST["student_id"]."'
		";
		$statement = $connect->prepare($query);
		if($statement->execute())
		{
			echo 'Data Delete Successfully';
		}
	}
}

?>
