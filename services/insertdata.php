<?php 

require "connection.php";


$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

$msg = "";

$query = "INSERT INTO customer(Username,Email,	Password)VALUES('$username','$email','$password')";
$fire = mysqli_query($con, $query) or die('not inserted data into the database' . mysqli_error($con));
if ($fire) {
  $msg = "Record Saved Successfully";
} else {
    $msg = "Record Not Saved !";
}
echo $msg;

?>















?>