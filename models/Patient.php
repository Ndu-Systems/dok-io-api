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
      
        $query = "
        select patient.FirstName,patient.Surname,patient.IdNumber,patient.Email,patient.Cellphone,patient.Gender,patient.CreateDate,
        medicalaid.MedicalaidId, medicalaid.MedicalaidName, medicalaid.MedicalaidType, medicalaid.MemberShipNumber, medicalaid.PrimaryMember, medicalaid.PrimaryMemberId

        from patient 
        left join  medicalaid on medicalaid.PatientId = patient.PatientId           
        where patient.StatusId =?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(Array(1));

        return $stmt;

    }


}



