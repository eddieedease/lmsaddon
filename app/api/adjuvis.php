<?php

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

@$id = $request->id;
@$skips = $request->skips;




include 'xyr.php';

// connect to the database
$dbh = new PDO("mysql:host=$hostname;dbname=$db_name", $username, $password);
// a query get all the records from the users table

//$date = date('Y-m-d H:i:s');mysql

$sql = "UPDATE aa SET skips='$skips' WHERE id=1";
// use prepared statements, even if not strictly required is good practice
$stmt = $dbh->prepare($sql);
// execute the query
$dbh = null;
$stmt->execute();

echo $sql;

// final callback
?>
