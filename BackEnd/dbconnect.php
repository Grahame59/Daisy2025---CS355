<?php
// This is a script that we can use to connect to the DB. So to connect u just reference
// this script. 

$host = 'localhost';
$username = 'grahamk1';
$password = '!Daisy531';
$database = 'grahamk1_DaisyDatabase';

$db = new mysqli($host, $username, $password, $database);

if ($db->connect_errno) 
{
    echo "Database connection failed: " . $db->connect_error;
    exit;
}
?>
