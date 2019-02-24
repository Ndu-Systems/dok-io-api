<?php
include_once '../../config/Database.php';
include_once '../../models/Prescription.php';

$data = json_decode(file_get_contents("php://input"));

//if there is a patient then add prescription
if(isset($data->patientId)){

    $patientId = $data->patientId; 
    $symptoms = $data->symptoms;
    $diagnosis = $data->diagnosis;
    $boolPreasure = $data->boolPreasure;
    $pulseRate = $data->pulseRate;
    $CreateUserId = $data->CreateUserId;
    $ModifyUserId = $data->ModifyUserId;
    $drugs = $data->drugs;   
    $StatusId = 1; 

    

    $prescriptionId;
}
else{
    echo json_encode("500 - internal server error");
}