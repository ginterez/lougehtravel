<?php

$servername = "localhost";
$username = "root";
$password = "";
$db = "lougehtravel";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

if(isset($_POST['savegroup']))
{
	$groupName = $_POST['groupName'];
	$yearCreated = $_POST['yearCreated'];

	$query = "INSERT INTO groups ('group_name', 'year_created') VALUES ('$groupName', '$yearCreated')";
	$query_run = mysqli_query($conn, $query);

	if($query_run)
	{
		echo '<script> alert("Group Added"); </script>';
		header('Location: index.php');
	}
	else
	{
		echo '<script> alert("Group is not added"); </script>';
	}
}


?>