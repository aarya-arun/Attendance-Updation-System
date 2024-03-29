<?php

//login.php

include('admin/database_connection.php');

session_start();

if(isset($_SESSION["teacher_id"]))
{
  header('location:index.php');
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student Attendance System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>Student Attendance</h1>
</div>


<div class="container">
  <div class="row">
    <div class="col-md-4">

    </div>
    <div class="col-md-4" style="top:39.5%; right:20%; width:320px; position: absolute;">
      <div class="card">
        <div class="card-header">I'm a student</div>
        <div class="card-body">
          
            <a href="student_login.php"><img src="student.png" style="width:220px; height:195px;"></a>
        </div>
      </div>
    </div>
    <div class="col-md-4">


        </div>
        <div class="col-md-4" style="top:40%; left:20%; width: 320px; position:absolute;">
          <div class="card">
            <div class="card-header">I'm a teacher</div>
            <div class="card-body">
              <a href="login.php"><img src="teacher.png" style="width:220px; height:195px;"></a>
              

            </div>
          </div>
        </div>
        <div class="col-md-4">

    </div>
  </div>
</div>

</body>
</html>

<script>
$(document).ready(function(){
  $('#teacher_login_form').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      url:"check_teacher_login.php",
      method:"POST",
      data:$(this).serialize(),
      dataType:"json",
      beforeSend:function(){
        $('#teacher_login').val('Validate...');
        $('#teacher_login').attr('disabled','disabled');
      },
      success:function(data)
      {
        if(data.success)
        {
          location.href="index.php";
        }
        if(data.error)
        {
          $('#teacher_login').val('Login');
          $('#teacher_login').attr('disabled', false);
          if(data.error_teacher_emailid != '')
          {
            $('#error_teacher_emailid').text(data.error_teacher_emailid);
          }
          else
          {
            $('#error_teacher_emailid').text('');
          }
          if(data.error_teacher_password != '')
          {
            $('#error_teacher_password').text(data.error_teacher_password);
          }
          else
          {
            $('#error_teacher_password').text('');
          }
        }
      }
    })
  });
});
</script>