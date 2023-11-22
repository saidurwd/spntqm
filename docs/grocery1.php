<?php 
	$mysqli = new mysqli('localhost', 'spntqm_web', 'Dhaka2023*@', 'spntqm_web');
	if($mysqli->connect_errno != 0){
		echo $mysqli->connect_error;
		exit();
	}
    echo "OK"

//	$sql = "SELECT name,price FROM product WHERE id<150";
//	$results = $mysqli->query($sql);
//	$jason_array=array();
//	while($product = mysqli_fetch_assoc($results))
//	{
	    
//		$jason_array[] = $product;
//	}
	
//	print (jason_encode($jason_array));
	?>