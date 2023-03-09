<?php

require_once  'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['ScholarshipID'])){
	
$ScholarshipID = $_GET['ScholarshipID'];	

$query = "SELECT * FROM Scholarship where ScholarshipID=$ScholarshipID ";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
		
echo <<<_END
	
	<form action='updatescholarship.php' method='post'>

	<pre>
	
	Amount: <input type='text' name='Amount' value='$row[Amount]'>
	Date: <input type='text' name='Date' value='$row[Date]'>
	Donor: <input type='text' name='Donor' value='$row[Donor]'>
	Type: <input type='text' name='Type' value='$row[Type]'>
		
	
		
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='ScholarshipID' value='$row[ScholarshipID]'>
		<input type='submit' value='UPDATE RECORD'>	
		
		</pre>
	</form>
	
_END;

}

}


if(isset($_POST['update'])){
	
	$ScholarshipID = $_POST['ScholarshipID'];
	$Amount = $_POST['Amount'];
	$Date = $_POST['Date'];
	$Donor = $_POST['Donor'];	
	$Type = $_POST['Type'];	
	
	$query = "Update Scholarship set Amount='$Amount', Date='$Date', Donor='$Donor', Type='$Type' where ScholarshipID = $ScholarshipID ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: readscholarship.php");
	
	
}

$conn->close();



?>
<html>





<form action="http://localhost:8888/FINAL%20PROJECT/employeehomepage.php">
        <button>Back to Homepage</button>
      </form>



</html>