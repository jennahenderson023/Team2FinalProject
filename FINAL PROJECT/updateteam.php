<?php

$page_roles = array('employee'); 

require_once  'login.php';
require_once  'checksession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['TeamID'])){
	
$TeamID = $_GET['TeamID'];	

$query = "SELECT * FROM Team where TeamID=$TeamID ";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
		
echo <<<_END
	
	<form action='updateteam.php' method='post'>

	<pre>
	
	Type: <input type='text' name='Type' value='$row[Type]'>
	Email: <input type='text' name='Email' value='$row[Email]'>
	Established_date: <input type='text' name='Established_date' value='$row[Established_date]'>
		
	
		
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='TeamID' value='$row[TeamID]'>
		<input type='submit' value='UPDATE RECORD'>	
		
		</pre>
	</form>
	
_END;

}

}


if(isset($_POST['update'])){
	
	$TeamID = $_POST['TeamID'];
	$Type = $_POST['Type'];
	$Email = $_POST['Email'];
	$Established_date = $_POST['Established_date'];	
	
	$query = "Update Team set Type='$Type', Email='$Email', Established_date='$Established_date' where TeamID = $TeamID ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: readteamslist.php");
	
	
}

$conn->close();



?>
<html>





<form action="http://localhost:8888/FINAL%20PROJECT/employeehomepage.php">
        <button>Back to Homepage</button>
      </form>



</html>