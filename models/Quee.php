<?php


class Quee
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function getActive()
    {

        $query = "SELECT * FROM que WHERE Status =? ORDER BY QuiID";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array(1));

        return $stmt;
    }

    //Add  
    public function add(
        $PatientId,
        $PatientName,
        $Status,
        $CreateUserId
    ) {
        $query = "INSERT INTO que (
                                        PatientId,
                                        PatientName,
                                        Status,
                                        CreateUserId
                                        )
                    VALUES (?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(
                $PatientId,
                $PatientName,
                $Status,
                $CreateUserId
            ));
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
            return $stmt->execute(array(2,$QuiID));
        } catch (Exception $e) {
            return $e;
        }
    }
}
