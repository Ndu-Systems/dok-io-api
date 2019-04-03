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
    public function read($statusId)
    {

        $query = "
        select patient.PatientId,patient.Title, patient.DOB,patient.StatusId, patient.Province, patient.FirstName, patient.Surname,patient.IdNumber,patient.Email,patient.Cellphone,patient.Gender,patient.CreateDate,patient.AddressLine1,patient.City ,patient.PostCode ,
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
        $stmt->execute(array($statusId));

        return $stmt;

    }
 
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
        $Title,
        $FirstName,
        $Surname,
        $IdNumber,
        $DOB,
        $Gender,
        $Email,
        $Cellphone,
        $AddressLine1,
        $City,
        $Province,
        $PostCode,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        if ($this->getByEmail($Email) > 0) {
            return "User with email address (" . $Email . ") already exists";
        }
        $query = "INSERT INTO patient (
                                         PatientId
                                        ,Title
                                        ,FirstName
                                        ,Surname
                                        ,IdNumber
                                        ,DOB
                                        ,Gender
                                        ,Email
                                        ,Cellphone
                                        ,AddressLine1
                                        ,City
                                        ,Province
                                        ,PostCode
                                        ,CreateUserId
                                        ,ModifyUserId
                                        ,StatusId)
                    VALUES (UUID(), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if($stmt->execute(array(
                $Title,
                $FirstName,
                $Surname,
                $IdNumber,
                $DOB,
                $Gender,
                $Email,
                $Cellphone,
                $AddressLine1,
                $City,
                $Province,
                $PostCode,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))){
                return $this->getUserByEmail($Email);
            }
        } catch (Exception $e) {
            return $e;
        }

    }

    //Add Update User 
    public function update(
        $Title,
        $FirstName,
        $Surname,
        $IdNumber,
        $DOB,
        $Gender,
        $Email,
        $Cellphone,
        $AddressLine1,
        $City,
        $Province,
        $PostCode,
        $CreateUserId,
        $ModifyUserId,
        $StatusId,
        $PatientId
    ) {
        // I need to check if u not taking someones email
        $query = "UPDATE  patient  SET
                                        Title = ?
                                        ,FirstName = ?
                                        ,Surname = ?
                                        ,IdNumber = ?
                                        ,DOB = ?
                                        ,Gender = ?
                                        ,Email = ?
                                        ,Cellphone = ?
                                        ,AddressLine1 = ?
                                        ,City = ?
                                        ,Province = ?
                                        ,PostCode = ?
                                        ,CreateUserId = ?
                                        ,ModifyUserId = ?
                                        ,StatusId = ?
                                        WHERE PatientId=?

                             
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if($stmt->execute(array(
                $Title,
                $FirstName,
                $Surname,
                $IdNumber,
                $DOB,
                $Gender,
                $Email,
                $Cellphone,
                $AddressLine1,
                $City,
                $Province,
                $PostCode,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $PatientId
            ))){
                return $PatientId;
            }
        } catch (Exception $e) {
            return $e;
        }

    }


}



