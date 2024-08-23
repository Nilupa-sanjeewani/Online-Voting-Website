<?php

require 'config.php';

readData2();

function readData2()
{
	global $con;
	
	$sql = "SELECT performerid, performername, votes FROM ses2results";
	$result = $con->query($sql);
	
	if($result->num_rows > 0)
	{
		echo "<table>";
               	  echo "<tr>";
              	 	 echo "<th>ID</th>";
                 	 echo "<th>Name</th>";
               	 	 echo "<th>Votes</th>";
		  echo "</tr>";
		while($row = $result->fetch_assoc())
		{
			 echo "<tr>";
				 echo "<td>" . $row['performerid'] . "</td>";
               			 echo "<td>" . $row['performername'] . "</td>";
             	       		 echo "<td>" . $row['votes'] . "</td>";
			 echo "</tr>";
		}
		echo "</table>";
	}
	else
	{
		echo "No results";
	}
	$con->close();
}
?>