<?php
include_once ('config.php');
if ($_SERVER['REQUEST_METHOD']=='POST'){
    $name=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];

    $query="insert into customer(username,email,password)values('$name', '$email','$password')";
    $result=mysqli_qruery($con,$query);

    if (!$result){
        $responce["success"]="false";
        $responce["message"]="error";
        echo json_encode($responce);
        mysqli_close($con);
    }else{
        $responce["success"]="true";
        $responce["message"]="Success";
        echo json_encode($responce);
        mysqli_close($con);
    }
}
?>