<?php


class Practice
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function add(
        $Name,
        $Address,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        if ($this->getPractiveByUserandName($CreateUserId, $Name) > 0) {
            return $Name . "is  already exist";
        }
        $query = "INSERT INTO practice (
                            PracticeId,
                            Name,
                            Address,
                            CreateUserId,
                            ModifyUserId,
                            StatusId
                                  )
                    VALUES (uuid(), ?, ?, ?, ?,?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Name,
                $Address,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getPractiveByUserandNameFull($CreateUserId, $Name);
            }
        } catch (Exception $e) {
            return $e;
        }
    }
    public function getPractiveByUserandName($CreateUserId, $Name)
    {

        $query = "SELECT * FROM practice WHERE CreateUserId = ? and Name = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CreateUserId, $Name));

        return $stmt->rowCount();
    }
    public function getPractiveByUserandNameFull($CreateUserId, $Name)
    {

        $query = "SELECT * FROM practice WHERE CreateUserId = ? and Name =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($CreateUserId, $Name));

        if ($stmt->rowCount()) {
            $practice = $stmt->fetch(PDO::FETCH_ASSOC);
            return  $practice;
        }

        return null;
    }

    public function adduserpractice(
        $UserId,
        $PracticeId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "INSERT INTO userpractice (
                                        UserId,
                                        PracticeId,
                                        CreateUserId,
                                        ModifyUserId,
                                        StatusId
                                        )
                    VALUES (?, ?, ?, ?,?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $UserId,
                $PracticeId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->conn->lastInsertId();
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getPracticeByUserId($UserId)
    {

        $query = "
        select 
        patient.PatientId,
        patient.Title, 
        patient.DOB,
        patient.StatusId, 
        patient.Province, 
        patient.FirstName, 
        patient.Surname,
        patient.IdNumber,
        patient.Email,
        patient.Cellphone,
        patient.Gender,
        patient.CreateDate,
        patient.AddressLine1,
        patient.City ,
        patient.PostCode ,

        medicalaid.MedicalaidId, 
        medicalaid.MedicalaidName, 
        medicalaid.MedicalaidType, 
        medicalaid.MemberShipNumber, 
        medicalaid.PrimaryMember, 
        medicalaid.PrimaryMemberId,

        contactperson.ContactPersonId,
        contactperson.Name as ContactName,
        contactperson.CellNumber  as ContactCell,
        contactperson.Relationship  as ContactRelationship,

        count(appointment.AppointmentId) as NumAppointments 

        from patient 
        left join  medicalaid on medicalaid.PatientId = patient.PatientId   
        left join appointment on appointment.PatientId = patient.PatientId        
        left join contactperson on contactperson.PatientId = patient.PatientId        
        where patient.StatusId = ?		
		GROUP by patient.PatientId
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($statusId));

        return $stmt;

    }
}
