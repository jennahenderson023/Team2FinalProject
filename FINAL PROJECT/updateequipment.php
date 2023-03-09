<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['EquipmentID'])){
	
$EquipmentID = $_GET['EquipmentID'];	

$query = "SELECT * FROM Equipment where EquipmentID=$EquipmentID ";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
		
echo <<<_END
	
	<form action='updateequipment.php' method='post'>

	<pre>
	
	Type: <input type='text' name='Type' value='$row[Type]'>
	Annual Cost: <input type='text' name='Annual_cost' value='$row[Annual_cost]'>
	Year: <input type='text' name='Year' value='$row[Year]'>
		
	
		
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='EquipmentID' value='$row[EquipmentID]'>
		<input type='submit' value='UPDATE RECORD'>	
		
		</pre>
	</form>
	
_END;

}

}


if(isset($_POST['update'])){
	
	$EquipmentID = $_POST['EquipmentID'];
	$TeamID = $_POST['TeamID'];
	$Type = $_POST['Type'];
	$Annual_cost = $_POST['Annual_cost'];
	$Year = $_POST['Year'];	
	
	$query = "Update Equipment set Type='$Type', Annual_cost='$Annual_cost', Year='$Year' where EquipmentID = $EquipmentID ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: readequipment.php");
	
	
}

$conn->close();



?>
<html>





<form action="http://localhost:8888/FINAL%20PROJECT/employeehomepage.php">
        <button>Back to Homepage</button>
      </form>



</html>