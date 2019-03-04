<?php
include_once '../../config/Database.php';
include_once '../../models/Prescription.php';

$data = json_decode(file_get_contents("php://input"));

//if there is a patient then add prescription
if (isset($data->patientId)) {

    $patientId = $data->patientId;
    $symptoms = $data->symptoms;
    $diagnosis = $data->diagnosis;
    $boolPreasure = $data->boolPreasure;
    $pulseRate = $data->pulseRate;
    $CreateUserId = $data->CreateUserId;
    $ModifyUserId = $CreateUserId;
    $drugs = $data->drugs;
    $StatusId = 1;

    // echo json_encode($data);
    //connect to db
    $database = new Database();
    $db = $database->connect();

    //Instantiate user object

    $prescriptionObj = new Prescription($db);

    $result = $prescriptionObj->AddPrescription(
        $patientId, 
        $symptoms,
        $diagnosis,
        $boolPreasure ,
        $pulseRate,
        $CreateUserId,
        $ModifyUserId,      
        $StatusId
    );

    echo json_encode($result);
} else {
    echo json_encode("500 - internal server error");
}
