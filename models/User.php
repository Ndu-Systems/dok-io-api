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
        FirstName,
        Surname,
        PhoneNumber,
        UserId, 
        Email 
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

       //get user by email
       public function getByIdEmail($email)
       {
   
           $query = "SELECT * FROM user WHERE Email = ?";
   
           $stmt = $this->conn->prepare($query);
           $stmt->execute(array($email));

        if ($stmt->rowCount()) {
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            return  $user;
        }
   
           return null;
   
       }
          //get user by email
          public function getByUserId($UserId)
          {
      
              $query = "SELECT * FROM user WHERE UserId = ?";
      
              $stmt = $this->conn->prepare($query);
              $stmt->execute(array($UserId));
   
           if ($stmt->rowCount()) {
               $user = $stmt->fetch(PDO::FETCH_ASSOC);
               return  $user;
           }
      
              return null;
      
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
                return $this->getByIdEmail($Email);
            }
        } catch (Exception $e) {
            return $e;
        }
    }
}
