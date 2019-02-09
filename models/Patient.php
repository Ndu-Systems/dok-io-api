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
        medicalaid.MedicalaidId, medicalaid.MedicalaidName, medicalaid.MedicalaidType, medicalaid.MemberShipNumber, medicalaid.PrimaryMember, medicalaid.PrimaryMemberId,
        count(appointment.AppointmentId) as NumAppointments 
        from patient 
        left join  medicalaid on medicalaid.PatientId = patient.PatientId   
        left join appointment on appointment.PatientId = patient.PatientId        
        where patient.StatusId = ?		
		GROUP by patient.PatientId
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(Array(1));

        return $stmt;

    }


}



