<?php

	$con = new mysqli("localhost","root","","votingsystem");
	
	if ($con->connect_error)
	{
		die("Connection failed: " . $con->connect_error);
	}
	else {
		echo "Connection Success... ";
		echo nl2br("Congratulations!\n");
	}
	
?>