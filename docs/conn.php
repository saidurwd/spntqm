<?php
// Create 4 variables to store these information
$server="localhost";
$username="spntqm_web";
$password="Dhaka2023*@";
$database = "spntqm_web";
// Create connection
$conn = new mysqli($server, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
