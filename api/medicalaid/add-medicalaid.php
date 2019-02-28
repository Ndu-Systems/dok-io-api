<?php
include_once '../../config/Database.php';
include_once '../../models/MedicalAid.php';

$data = json_decode(file_get_contents("php://input"));
$PatientId  = $data->PatientId;
$MedicalaidName  = $data->MedicalaidName;
$MedicalaidType  = $data->MedicalaidType;
$MemberShipNumber  = $data->MemberShipNumber;
$PrimaryMember  = $data->PrimaryMember;
$PrimaryMemberId  = $data->PrimaryMemberId;
$CreateUserId  = $data->CreateUserId;
$ModifyUserId  = $CreateUserId;
$StatusId = $data->StatusId;



//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$item = new MedicalAid($db);




$result = $item->add(
    $PatientId,
    $MedicalaidName,
    $MedicalaidType,
    $MemberShipNumber,
    $PrimaryMember,
    $PrimaryMemberId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);







