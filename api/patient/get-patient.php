<?php
include_once '../../config/Database.php';
include_once '../../models/Patient.php';

 $PatientId = $_GET['PatientId'];
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$patients = new Patient($db);

$result = $patients->getById($PatientId);

if($result->rowCount()){
    $patient = $result->fetch(PDO::FETCH_ASSOC);
}

echo json_encode($patient);





