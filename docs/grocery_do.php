<?php 
	$mysqli = new mysqli('localhost', 'spntqm_web', 'Dhaka2023*@', 'spntqm_web');
	if($mysqli->connect_errno != 0){
		echo $mysqli->connect_error;
		exit();
	}


	$sql = "SELECT name,price FROM product WHERE id<150";
	$results = $mysqli->query($sql);
	
	while($product = $results->fetch_assoc()){
		$products[] = $product;
	}
	highlight_string("<?php " . var_export($products, true) . ";?>");
	$encoded_data = json_encode($products, JSON_PRETTY_PRINT);
    file_put_contents('data.json', $encoded_data);

