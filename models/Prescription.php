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
    public $drugs;


     //Constructor to DB

        public function __construct($db)
        {
            $this->conn = $db;
        }



    //Get all prescriptions
    public function GetAll()
    {
       $query = "       
       SELECT * 
       FROM prescription
       WHERE StatusId = ?
       ORDER BY createdate
       ";
       //prepare query statement PDO
       $stmt = $this->conn->prepare($query);

       //Execute query
       $stmt->execute(array(1));

       return $stmt;
    }

    //Get prescriptions for a single patient
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