<?php


class User
{
    //DB Stuff
    private $conn;
    private $table = 'user';

    //Return properties
    public $UserId;
    public $Email;
    public $Password;

    //Constructor to DB

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Get a user
    public function read($email, $password)
    {

        $query = "SELECT 
        UserId, 
        Email ,
        Username
        FROM 
        user 
        WHERE 
        Email =   ?
        AND 
        Password = ?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($email, $password));

        return $stmt;
    }


    public function  signUp(
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
    ) {
        $query = "INSERT INTO user (
                                        UserId, 
                                        Email, 
                                        Password, 
                                        FirstName, 
                                        Surname, 
                                        Title, 
                                        Gender, 
                                        PhoneNumber, 
                                        IdNumber, 
                                        CreateUserId, 
                                        ModifyUserId, 
                                        StatusId
                                    )
                    VALUES (uuid(),?, ?, ?, ?,?, ?, ?,?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
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
            ))) {
                // return $this->conn->lastInsertId();
                return true;
            }
        } catch (Exception $e) {
            return $e;
        }
    }
}
