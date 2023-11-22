<?php
    
    // Include the necessary files
    require_once "conn.php";
   

	$sql = "SELECT * FROM product";
	$results = $mysqli->query($sql);
	while($product = $results->fetch_assoc()){
		$products[] = $product;
	}
	highlight_string("<?php " . var_export($products, true) . ";?>");

	$encoded_data = json_encode($products, JSON_PRETTY_PRINT);
    file_put_contents('data.json', $encoded_data);       
?>