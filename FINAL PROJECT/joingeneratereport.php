<html>
	<head>
	
	<h1> Generate Income Report  </h1>
	
	</head>

</html>

<?php

$page_roles = array('employee'); 

require_once  'login.php';
require_once  'checksession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "SELECT Team.TeamID,Team.Type,Team.Email,Income.Amount,Income.Year
FROM Team
INNER JOIN Income
ON Team.TeamID = Income.TeamID";


$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	TeamID: $row[TeamID]
	Type: $row[Type]
	Email: $row[Email]
	Amount: $row[Amount]
	Year: $row[Year]
	
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