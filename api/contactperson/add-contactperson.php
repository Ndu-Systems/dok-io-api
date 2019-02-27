<?php
include_once '../../config/Database.php';
include_once '../../models/Contactperson.php';

$data = json_decode(file_get_contents("php://input"));


$PatientId  = $data->PatientId;
$Name  = $data->Name;
$Relationship  = $data->Relationship;
$CellNumber  = $data->CellNumber;
$CreateUserId  = $data->CreateUserId;
$ModifyUserId =  $CreateUserId;
$StatusId  = $data->StatusId;



//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new Contactperson($db);

$result = $user->add(
    $PatientId,
    $Name,
    $Relationship,
    $CellNumber,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);







