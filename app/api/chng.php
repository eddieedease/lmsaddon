<?php

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

@$id = $request->id;
@$bedrijf = $request->bedrijf;
@$contact = $request->contact;
@$email = $request->email;
@$info = $request->info;
@$ww = $request->ww;


$postar = array('id' => $id, 'bedrijf' => $bedrijf, 'contact' => $contact, 'email' => $email,'info' => $info,'ww' => $ww);

$a = json_encode($postar);

// we need it back in array form
$allinone = json_decode($a, true);

include 'xyr.php';

// connect to the database
$dbh = new PDO("mysql:host=$hostname;dbname=$db_name", $username, $password);
// a query get all the records from the users table

//$date = date('Y-m-d H:i:s');mysql

$sql = "INSERT INTO power (id,bedrijf, naam, email,info, ww) VALUES ('$id','$bedrijf', '$contact','$email','$info','$ww') ON DUPLICATE KEY UPDATE bedrijf='$bedrijf', naam='$contact',email='$email',info='$info',ww='$ww'";
// use prepared statements, even if not strictly required is good practice
$stmt = $dbh->prepare($sql);
// execute the query
$dbh = null;
$stmt->execute();

echo $sql;

// final callback
?>
