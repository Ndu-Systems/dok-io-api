<?php


class Contactperson
{
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

    //Get  by id
    public function getById($PatientId)
    {

        $query = "SELECT * FROM contactperson WHERE PatientId =? ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($PatientId));

        return $stmt;
    }

    //Add user 
    public function add(
        $PatientId,
        $Name,
        $Relationship,
        $CellNumber,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        $query = "INSERT INTO contactperson (
                                        ContactPersonId,
                                        PatientId,
                                        Name,
                                        Relationship,
                                        CellNumber,
                                        CreateUserId,
                                        ModifyUserId,
                                        StatusId
                                        )
                    VALUES (UUID(),?, ?, ?, ?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(
                $PatientId,
                $Name,
                $Relationship,
                $CellNumber,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ));
        } catch (Exception $e) {
            return $e;
        }
    }
}
