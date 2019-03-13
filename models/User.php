<?php


class User{
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
    public function read( $email, $password)
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
        $stmt->execute(Array($email,$password));

        return $stmt;

    }


}



