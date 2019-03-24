<?php
include_once '../../config/Database.php';
include_once '../../models/MedicalAid.php';

$data = json_decode(file_get_contents("php://input"));
$MedicalaidId  = $data->MedicalaidId;
$MedicalaidName  = $data->MedicalaidName;
$MedicalaidType  = $data->MedicalaidType;
$MemberShipNumber  = $data->MemberShipNumber;
$PrimaryMember  = $data->PrimaryMember;
$PrimaryMemberId  = $data->PrimaryMemberId;
$ModifyUserId  = $data->ModifyUserId;
$PatientId  = $data->PatientId;
$StatusId = $data->StatusId;



//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$item = new MedicalAid($db);




$result = $item->update(
    $PatientId,
    $MedicalaidId,
    $MedicalaidName,
    $MedicalaidType,
    $MemberShipNumber,
    $PrimaryMember,
    $PrimaryMemberId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);







