<?php 

require "connection.php";


$name = $_POST['name'];
$phone = $_POST['phone'];
$password = $_POST['password'];
$refphone = $_POST['refphone'];
$address = $_POST['address'];

$msg = "";

$query = "INSERT INTO customer(name,phone,password,refphone,address)VALUES('$name','$phone','$password','$refphone','$address')";

$fire = mysqli_query($con, $query) or die('not inserted data into the database' . mysqli_error($con));
if ($fire) {
  $msg = "Record Saved Successfully";
} else {
    $msg = "Record Not Saved !";
}
echo $msg;

?>















?>