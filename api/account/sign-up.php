<?php
include_once '../../config/Database.php';
include_once '../../models/User.php';

$data = json_decode(file_get_contents("php://input"));

$Email= $data->Email;
$Password= $data->Password;
$FirstName= $data->FirstName;
$Surname= $data->Surname;
$Title= $data->Title;
$Gender= $data->Gender;
$PhoneNumber= $data->PhoneNumber;
$IdNumber= $data->IdNumber;
$CreateUserId= $data->CreateUserId;
$ModifyUserId= $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new user($db);

$result = $user->signUp(
    $Email, 
    $Password, 
    $FirstName, 
    $Surname, 
    $Title, 
    $Gender, 
    $PhoneNumber, 
    $IdNumber, 
    $CreateUserId, 
    $ModifyUserId, 
    $StatusId
);

echo json_encode($result);






