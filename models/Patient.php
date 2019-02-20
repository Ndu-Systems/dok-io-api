<?php


class Patient
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

    //Get a user
    public function read()
    {

        $query = "
        select patient.PatientId, patient.FirstName, patient.Surname,patient.IdNumber,patient.Email,patient.Cellphone,patient.Gender,patient.CreateDate,
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
        $stmt->execute(array(1));

        return $stmt;

    }
    //Get patient by id
    public function getById($PatientId)
    {

        $query = "
        select patient.PatientId, patient.FirstName, patient.DOB, patient.Surname,patient.IdNumber,patient.Email,patient.Cellphone,patient.Gender,patient.CreateDate,
        medicalaid.MedicalaidId, medicalaid.MedicalaidName, medicalaid.MedicalaidType, medicalaid.MemberShipNumber, medicalaid.PrimaryMember, medicalaid.PrimaryMemberId,
        count(appointment.AppointmentId) as NumAppointments 
        from patient 
        left join  medicalaid on medicalaid.PatientId = patient.PatientId   
        left join appointment on appointment.PatientId = patient.PatientId        
        where patient.PatientId = ?		
		GROUP by patient.PatientId
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($PatientId));

        return $stmt;

    }
    //Get user by Email
    public function getByEmail($email)
    {

        $query = "SELECT * FROM patient WHERE Email = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($email));

        return $stmt->rowCount();

    }
      //Add user 
    public function add(
        $FirstName,
        $Surname,
        $IdNumber,
        $DOB,
        $Gender,
        $Email,
        $Cellphone,
        $AddressLine1,
        $AddressLine2,
        $AddressLine3,
        $City,
        $PostCode,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        if ($this->getByEmail($email) > 0) {
            return "User with email address (:" . $email . ") already exists";
        }
        $query = "INSERT INTO patient (
                                         PatientId
                                        ,FirstName
                                        ,Surname,
                                        ,IdNumber,
                                        ,DOB,
                                        ,Gender,
                                        ,Email,
                                        ,Cellphone,
                                        ,AddressLine1,
                                        ,AddressLine2,
                                        ,AddressLine3,
                                        ,City,
                                        ,PostCode,
                                        ,CreateUserId,
                                        ,ModifyUserId,
                                        ,StatusId)
                    VALUES (GUUD(),?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)           
                   ";

        $stmt = $this->conn->prepare($query);
        return $stmt->execute(array(
            $FirstName,
            $Surname,
            $IdNumber,
            $DOB,
            $Gender,
            $Email,
            $Cellphone,
            $AddressLine1,
            $AddressLine2,
            $AddressLine3,
            $City,
            $PostCode,
            $CreateUserId,
            $ModifyUserId,
            $StatusId
        ));
    }

    


}



