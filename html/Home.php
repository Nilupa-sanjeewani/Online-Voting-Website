<?php

session_start();
if(!isset($_SESSION['username'])){
    header('location:Login.php');
}

?>

<html>
<head>
<title> Welcome </title>    
</head>
<body>
    
    
    
    <div class="container">
    <a class="float-right"  href="Logout.php">Log out </a>
    
    
        <img src="../img/PXtxNT.jpg" width=100%>
        
    <h1>Loging succssesful!!!!!<br/><br/><br/>
        <center>
        Welcome
        </center>
        <? echo $_SESSION['username']; ?></h1>
    </div>
    
</body>





</html>