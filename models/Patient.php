<?php


class Patient{
    //DB Stuff
    private $conn;

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
    public function read()
    {
      
        $query = "SELECT * from
        patient 
        WHERE 
        StatusId =   ?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(Array(1));

        return $stmt;

    }


}



