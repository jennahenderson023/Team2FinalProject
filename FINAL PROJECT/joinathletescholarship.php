<html>
	<head>
	
	<h1> Athlete Scholarship Join </h1>
	
	</head>

</html>

<?php

$page_roles = array('employee'); 

require_once  'login.php';
require_once  'checksession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT Athlete.AthleteID,Athlete.Firstname,Athlete.Lastname,Scholarship.ScholarshipID,Scholarship.Amount,Scholarship.Date,Scholarship.Donor
FROM Athlete
INNER JOIN Scholarship
ON Athlete.AthleteID = Scholarship.AthleteID";


$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	AthleteID: $row[AthleteID]
	Firstname: $row[Firstname]
	Lastname: $row[Lastname]
	ScholarshipID: $row[ScholarshipID]
	Amount: $row[Amount]
	Date: $row[Date]
	Donor: $row[Donor]
	
	</pre>



	
_END;

}

$conn->close();



?>

<html>





<form action="http://localhost:8888/FINAL%20PROJECT/employeehomepage.php">
        <button>Back to Homepage</button>
      </form>



</html>