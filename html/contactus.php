<?php
require('config.php');
	if(isset($_POST["contact-form-btn"])) {
	
	$name = $_POST['name'];
	$email = $_POST['email'];
	$tp = $_POST['phone'];
	$sms = $_POST['message'];
	}
	
		
	$sql="INSERT INTO contactus(name, email, phonenumber, message)
	VALUES('$name', '$email', '$tp', '$sms')";
	
	if($con->query($sql)) {
		echo "Data inserted successful.";
	}
	else {
		echo "Data inserted unsuccessful. Error:".$con->error;
	}
?>