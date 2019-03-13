<?php


class Note
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function getPatientNotes($PatientId)
    {

        $query = "SELECT * FROM note WHERE PatientId =?";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($PatientId));

        return $stmt;
    }

    //Add  
    public function add(
        $PatientId,
        $PatientName,
        $Status,
        $prescriptionGiven,
        $CreateUserId
    ) {
        $query = "INSERT INTO note (
                                        PatientId,
                                        PatientName,
                                        Status,
                                        prescriptionGiven,
                                        CreateUserId
                                        )
                    VALUES (?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $PatientId,
                $PatientName,
                $Status,
                $prescriptionGiven,
                $CreateUserId
            ))) {
                return $this->conn->lastInsertId();
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    //update  
    public function update(
        $QuiID
    ) {
        $query = "UPDATE que SET Status = ? Where QuiID=? ";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(2, $QuiID));
        } catch (Exception $e) {
            return $e;
        }
    }
}
