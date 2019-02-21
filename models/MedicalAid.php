<?php


class MedicalAid
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

    //Get medicalaid list
    public function read()
    {

        $query = "select * from medicalaid";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array(1));

        return $stmt;
    }
    //Get medicalaid by id
    public function getById($PatientId)
    {

        $query = "select * from medicalaid where PatientId = ?";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($PatientId));

        return $stmt;
    }
     //Get medicalaid by id
     public function getByMemebershipNumber($MemberShipNumber)
     {
 
         $query = "select * from medicalaid where MemberShipNumber = ?";
 
         //Prepare statement
         $stmt = $this->conn->prepare($query);
 
         //Execute query
         $stmt->execute(array($MemberShipNumber));
 
         return $stmt->rowCount();

     }
    //Add medicalaid 
    public function add(
        $PatientId,
        $MedicalaidName,
        $MedicalaidType,
        $MemberShipNumber,
        $PrimaryMember,
        $PrimaryMemberId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        if ($this->getByMemebershipNumber($MemberShipNumber) > 0) {
            return "Medical with Membership Number (:" . $MemberShipNumber . ") already exists";
        }
        $query = "INSERT INTO medicalaid (
                                       MedicalaidId,
                                        PatientId,
                                        MedicalaidName,
                                        MedicalaidType,
                                        MemberShipNumber,
                                        PrimaryMember,
                                        PrimaryMemberId,
                                        CreateUserId,
                                        ModifyUserId,
                                        StatusId)
                                VALUES (UUID(), ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(
                $PatientId,
                $MedicalaidName,
                $MedicalaidType,
                $MemberShipNumber,
                $PrimaryMember,
                $PrimaryMemberId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ));
        } catch (Exception $e) {
            return $e;
        }
    }
}
