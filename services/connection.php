<?php
    $con=mysqli_connect('localhost','root','','spntqm');
    if($con){
        echo "you are connected to the database" ;
    }else{
        echo "not connected to the database";
    }

?>