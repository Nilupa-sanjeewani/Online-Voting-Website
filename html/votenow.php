<?php

	require('config.php');
	if($_POST["rating"])
	{
		$ql=mysqli_query($conn,"UPDATE votes SET rating = rating + 1 WHARE performerid=1");
	}
	
	$sql = "SELECT performerid,rating FROM ses1results";
	$result = mysqli_query($conn, $sql);
	
	if(mysqli_num_rows($result) > 0)
	{
		while($row = mysqli_fetch_assoc($result))
		{
			echo $row["rating"]."<br><br>";
		}
	}
	else
	{
		echo "0 results";
	}
?>