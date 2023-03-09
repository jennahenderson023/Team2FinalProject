<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['AthleteID'])){
	
$AthleteID = $_GET['AthleteID'];	

$query = "SELECT * FROM Athlete where AthleteID=$AthleteID ";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
		
echo <<<_END
	
	<form action='updateathlete.php' method='post'>

	<pre>
	
	LastName: <input type='text' name='LastName' value='$row[LastName]'>
	FirstName: <input type='text' name='FirstName' value='$row[FirstName]'>
	Position: <input type='text' name='Position' value='$row[Position]'>
	Academic Level: <input type='text' name='Academic_level' value='$row[Academic_level]'>
	Contact: <input type='text' name='Contact' value='$row[Contact]'>
		
	
		
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='AthleteID' value='$row[AthleteID]'>
		<input type='submit' value='UPDATE RECORD'>	
		
		</pre>
	</form>
	
_END;

}

}


if(isset($_POST['update'])){
	
	$AthleteID = $_POST['AthleteID'];
	$TeamID = $_POST['TeamID'];
	$LastName = $_POST['LastName'];
	$FirstName = $_POST['FirstName'];	
	$Position = $_POST['Position'];	
	$Academic_level = $_POST['Academic_level'];	
	$Contact = $_POST['Contact'];	
	
	
	$query = "Update Athlete set LastName='$LastName', FirstName='$FirstName', Position='$Position', Academic_level='$Academic_level', Contact='$Contact' where AthleteID = $AthleteID ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: readathlete.php");
	
	
}

$conn->close();



?>
<html>





<form action="http://localhost:8888/FINAL%20PROJECT/employeehomepage.php">
        <button>Back to Homepage</button>
      </form>



</html>