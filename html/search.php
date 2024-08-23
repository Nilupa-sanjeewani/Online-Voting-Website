<?php
	require 'config.php';
	
	$query = $_GET['txtID']; 
	
	$min_len = 3;
	
	if(strlen($query) >= $min_len){ 
		
		$query = htmlspecialchars($query); 

		$query = mysql_real_escape_string($query);
		
		$results = "SELECT * FROM performer
			WHERE `performername` LIKE '%".$query."%'");
		
		if(mysql_num_rows($results) > 0){ 
			
			while($results = mysql_fetch_array($results)){
			
				echo "ID: " .$row["performerid"]. " - Name: " .$row["performername"]. " - City " .$row["city"]. " - Age: " .$row["age"].;
			}
		}
			
		else{ 
			echo "No results";
		}
		
	}
	else{ 
		echo "Minimum length is ".$min_length;
	}
	}
?>