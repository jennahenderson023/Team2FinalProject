<?php

//import credentials for db
$page_roles = array('employee'); 

require_once  'login.php';
require_once  'checksession.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['delete']))
{
	$TeamID = $_POST['TeamID'];

	$query = "DELETE FROM Team WHERE TeamID='$TeamID' ";
	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Return to the viewAllClassics page
	header("Location: readteamslist.php");
	
}


?>