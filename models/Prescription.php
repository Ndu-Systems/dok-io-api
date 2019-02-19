<?php

class Prescription{

     //DB Stuff
     private $conn;

     //Properties here
    public $prescriptionId;
    public $patientId;
    public $diagnosis;
    public $boolPreasure;
    public $pulseRate;
    public $createdate;
    public $CreateUserId;
    public $ModifyDate;
    public $ModifyUserId;
    public $StatusId;


     //Constructor to DB

        public function __construct($db)
        {
        $this->conn = $db;
        }



    public function GetPatientPrescriptions($PatientId)
    {
            $query = "            
                SELECT * 
                FROM prescription
                WHERE patientId = ?
                ORDER BY createdate
            ";

            //prepare the query statement PDO
            $stmt = $this->conn->prepare($query);

            //Executed the prepared statement
            $stmt->execute(Array($PatientId));

            return $stmt;
    }

}