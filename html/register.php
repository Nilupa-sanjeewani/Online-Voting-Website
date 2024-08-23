<?php
require('config.php');
	if(isset($_POST["btnsub"])) {
	
	$fn = $_POST['fname'];
	$ln = $_POST['lname'];
	$gen = $_POST['gender'];
	$tp = $_POST['mnumber'];
	$mail = $_POST['email'];
	$add = $_POST['address'];
	$bdate = $_POST['dobd'];
	$bmonth = $_POST['dobm'];
	$byear = $_POST['doby'];
	$pass = $_POST['password'];
	}
		
	$sql="INSERT INTO registerinfo(fname, lname, gender, mnumber, email, address, dobd, dobm, doby, password)
	VALUES('$fn', '$ln', '$gen', '$tp', '$mail', '$add', '$bdate', '$bmonth', '$byear', '$pass')";
	
	if($con->query($sql)) {
		echo "Data inserted successful.";
	}
	else {
		echo "Data inserted unsuccessful. Error:".$con->error;
	}
?>