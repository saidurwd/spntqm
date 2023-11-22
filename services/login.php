<?php 

require "connection.php";

$email = $_POST['email'];
$password = $_POST['password'];

$msg = "";

$query = "select * from users where Email = '$email' and Password = '$password'";
$fire = mysqli_query($con, $query) or die('not inserted data into the database' . mysqli_error($con));
if ($fire) {
  $msg = "Login Successfully";
} else {
    $msg = "Login Failed!";
}
echo $msg;
