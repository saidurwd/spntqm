<?php
    $con=mysqli_connect('https://www.spntqm.com','spntqm_web','Dhaka2023*@','spntqm_web');
    if($con){
        echo "you are connected to the database" ;
    }else{
        echo "not connected to the database";
    }

?>