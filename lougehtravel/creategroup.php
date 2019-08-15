<?php

$conn = mysqli_connect("localhost", "root", "", "lougehtravel");
if(!empty($_POST))
{
	$output = '';
	$groupName = mysqli_real_escape_string($conn, $_POST['groupName']);
	$yearCreated = mysqli_real_escape_string($conn, $_POST['yearCreated']);

	$query = "INSERT INTO groups(group_name, year_created) VALUES ('$groupName', '$yearCreated')";

	if(mysqli_query($conn, $query))
	{
		$output .= '<label class="text-success">Group is added</lable>';
		$select_query = "SELECT * FROM groups ORDER BY id DESC";
		$result = mysqli_query($conn, $select_query);
	}
}

?>