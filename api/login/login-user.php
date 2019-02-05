<?php
include_once '../../config/Database.php';
include_once '../../models/User.php';

$data = json_decode(file_get_contents("php://input"));
 $email          = $data->email;
 $password          = $data->password;
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new User($db);

$result = $user->read($email, $password);

if($result->rowCount()){
    $user = $result->fetch(PDO::FETCH_OBJ);
    echo json_encode($user);
}else{
    echo json_encode(error("Invalid User"));
}






