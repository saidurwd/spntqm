<?php 

require "connection.php";

$phone = $_POST['phone'];
$password = $_POST['password'];

$msg = "";

$query = "select * from customer where phone = '$phone' and password = '$password'";
$fire = mysqli_query($con, $query) or die('not inserted data into the database' . mysqli_error($con));
if ($fire) {
  $msg = "Login Successfully";
} else {
    $msg = "Login Failed!";
}
echo $msg;
