<?php
include_once '../../config/Database.php';
include_once '../../models/Patient.php';
include_once '../../models/Transactionhistory.php';
include_once '../../models/Practice.php';

$data = json_decode(file_get_contents("php://input"));

$FirstName  = $data->FirstName;
$Title  = $data->Title;
$Surname  = $data->Surname;
$IdNumber  = $data->IdNumber;
$DOB  = $data->DOB;
$Gender  = $data->Gender;
$Email  = $data->Email;
$Cellphone  = $data->Cellphone;
$AddressLine1  = $data->AddressLine1;
$City  = $data->City;
$Province  = $data->Province;
$PostCode  = $data->PostCode;
$CreateUserId  = $data->CreateUserId;
$ModifyUserId  = $data->CreateUserId;
$StatusId  = $data->StatusId;
$PracticeId = $data->PracticeId;

//check for email
if($Email == ''){
    $Email = time().'@doc-io.net';
}



//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new Patient($db);
$practise = new Practice($db);

$result = $user->add(
    $Title,
    $FirstName,
    $Surname,
    $IdNumber,
    $DOB,
    $Gender,
    $Email,
    $Cellphone,
    $AddressLine1,
    $City,
    $Province,
    $PostCode,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);

// log data
$userId = json_encode($result);
$log = new Transactionhistory($db);
if(isset($result['PatientId'])) {
    $addPatientDoctorPractise = $user->AddPatientDoctorPractice(
        $CreateUserId,
        $result['PatientId'],
        $PracticeId
    );
 
    $log_result  = $log->add('ADD_PATIENT',  json_encode($data),'', $result['PatientId'], $CreateUserId, $CreateUserId, 1);

}





