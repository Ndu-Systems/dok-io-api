<?php
include_once '../../config/Database.php';
include_once '../../models/Prescription.php';

//PatientId parameter
$PatientId = $_GET['PatientId'];

//connect to the database
$database = new Database();
$db = $database->connect();

//Instatiate the patient model object here
$prescriptions = new Prescription($db);

//Call the method to return all patient prescriptions
$result = $prescriptions->GetPatientPrescriptions($PatientId);

//Associat your results
if($result->rowCount()){
    $prescriptions  = $result->fetchAll(PDO::FETCH_ASSOC);
}

$outPut = Array();
$outPut['Patient-Prescriptions'] = $prescriptions;
echo json_encode($outPut);