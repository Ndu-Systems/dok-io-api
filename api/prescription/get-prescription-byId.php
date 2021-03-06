<?php
include_once '../../config/Database.php';
include_once '../../models/Prescription.php';
include_once '../../models/Medication.php';

$prescriptionId = $_GET['PrescriptionId'];

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate yoour objects here for our models
$prescriptions = new Prescription($db);
$medication = new Medication($db);

$output = Array();

$result = $prescriptions->GetById($prescriptionId);


if($result->rowCount()){
    while($row = $result->fetch(PDO::FETCH_OBJ)){
        
        $prescription = new Prescription($db);
        $prescription->prescriptionId = $row->prescriptionId;
        $prescription->patientId = $row->patientId;
        $prescription->symptoms = $row->symptoms;
        $prescription->diagnosis = $row->diagnosis;
        $prescription->boolPreasure = $row->boolPreasure;
        $prescription->pulseRate = $row->pulseRate;
        $prescription->createdate = $row->createdate;
        $prescription->CreateUserId = $row->CreateUserId;
        $prescription->ModifyDate = $row->ModifyDate;
        $prescription->ModifyUserId = $row->ModifyUserId;
        $prescription->StatusId = $row->StatusId;
        $prescription->drugs = $medication->GetMedicationForPrescription($row->prescriptionId);        
        $output[] = $prescription;   
    }
}

echo json_encode($output);