<html>
	<head>
	
	<h1>Create New User</h1>
	</head>
	
	<body>
		<form method='post' action='createnewuser.php'>
			Username: <input type='text' name='username'><br>
			Forename: <input type='text' name='forename'><br>
			Surname: <input type='text' name='surname'><br>
			Password: <input type='text' name='password'><br>
			<input type='submit' value='Login'>
		</form>
	</body>

</html>



<?php

require_once 'login.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_POST['username'])){
	
	$username = $_POST['username'];
	$forename = $_POST['forename'];
	$surname = $_POST['surname'];
	$password = $_POST['password'];
	
	//password_hash code here

$token = password_hash($password,PASSWORD_DEFAULT);

	//code to add user here
	$query = "insert into users (username, forename, surname, password) values ('$username', '$forename', '$surname', '$token')";
	$result = $conn->query($query);
	if(!$result) die($conn->error);
}

$conn->close();


?>


