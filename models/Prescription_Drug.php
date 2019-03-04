<?php


class Prescription_Drug
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

 
    //Get patient by id
    public function getById($PatientId)
    {

        $query = "
        select patient.PatientId, patient.FirstName, patient.DOB, patient.Surname,patient.IdNumber,patient.Email,patient.Cellphone,patient.Gender,patient.CreateDate,patient.AddressLine1,patient.City ,patient.PostCode ,
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
    //Get recently added user
    public function getUserByEmail($email)
    {

        $query = "SELECT * FROM patient WHERE Email = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($email));

        if($stmt->rowCount()){
           return $patient = $stmt->fetch(PDO::FETCH_ASSOC);
        }

    }
      //Add user 
    public function add(
        $prescriptionId, 
        $medicationId, 
        $unit, 
        $dosage, 
        $CreateUserId,
        $ModifyUserId ,
        $StatusId
    ) {
     
        $query = "INSERT INTO prescription_medication_drug (
                                        prescriptionMedicationId, 
                                        prescriptionId, 
                                        medicationId, 
                                        unit, 
                                        dosage, 
                                        CreateUserId,
                                        ModifyUserId ,
                                        StatusId)
                    VALUES (UUID(),?, ?, ?, ?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if($stmt->execute(array(
                $prescriptionId, 
                $medicationId, 
                $unit, 
                $dosage, 
                $CreateUserId,
                $ModifyUserId ,
                $StatusId
            ))){
                // return $this->getUserByEmail($Email);
                return true;
            }
        } catch (Exception $e) {
            return $e;
        }

    }




}



