<?php

$page_roles = array('employee'); 

require_once  'login.php';
require_once  'checksession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['IncomeID'])){
	
$IncomeID = $_GET['IncomeID'];	

$query = "SELECT * FROM Income where IncomeID=$IncomeID ";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
		
echo <<<_END
	
	<form action='updateincomesheet.php' method='post'>

	<pre>
	
	Type: <input type='text' name='Type' value='$row[Type]'>
	Amount: <input type='text' name='Amount' value='$row[Amount]'>
	Year: <input type='text' name='Year' value='$row[Year]'>
		
	
		
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='IncomeID' value='$row[IncomeID]'>
		<input type='submit' value='UPDATE RECORD'>	
		
		</pre>
	</form>
	
_END;

}

}


if(isset($_POST['update'])){
	
	$IncomeID = $_POST['IncomeID'];
	$TeamID = $_POST['TeamID'];
	$Type = $_POST['Type'];
	$Amount = $_POST['Amount'];
	$Year = $_POST['Year'];	
	
	$query = "Update Income set Type='$Type', Amount='$Amount', Year='$Year' where IncomeID = $IncomeID ";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: readincomesheets.php");
	
	
}

$conn->close();



?>
<html>





<form action="http://localhost:8888/FINAL%20PROJECT/employeehomepage.php">
        <button>Back to Homepage</button>
      </form>



</html>