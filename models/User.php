<?php 
    class User 
    {
        public $UserId,$Firstname,$LastName,$Email,$PhoneNumber,$CountryId,$Password,$DateOfRegistration,$Address,$Score,$UsersRoles ;

        public function __construct()
        {
            $this->db=Database::Connect();
        }

        

        /**
         * Get the value of UserId
         */ 
        public function getUserId()
        {
                return $this->UserId;
        }

        /**
         * Set the value of UserId
         *
         * @return  self
         */ 
        public function setUserId($UserId)
        {
                $this->UserId = $this->db->real_escape_string($UserId);
        }

        

        /**
         * Get the value of Firstname
         */ 
        public function getFirstname()
        {
                return $this->Firstname;
        }

        /**
         * Set the value of Firstname
         *
         * @return  self
         */ 
        public function setFirstname($Firstname)
        {
                $this->Firstname = $this->db->real_escape_string($Firstname);
        }

        /**
         * Get the value of LastName
         */ 
        public function getLastName()
        {
                return $this->LastName;
        }

        /**
         * Set the value of LastName
         *
         * @return  self
         */ 
        public function setLastName($LastName)
        {
                $this->LastName = $this->db->real_escape_string($LastName);
        }

        /**
         * Get the value of Email
         */ 
        public function getEmail()
        {
                return $this->Email;
        }

        /**
         * Set the value of Email
         *
         * @return  self
         */ 
        public function setEmail($Email)
        {
                $this->Email = $this->db->real_escape_string($Email);
        }

        /**
         * Get the value of PhoneNumber
         */ 
        public function getPhoneNumber()
        {
                return $this->PhoneNumber;
        }

        /**
         * Set the value of PhoneNumber
         *
         * @return  self
         */ 
        public function setPhoneNumber($PhoneNumber)
        {
                $this->PhoneNumber = $this->db->real_escape_string($PhoneNumber);
        }

        /**
         * Get the value of CountryId
         */ 
        public function getCountryId()
        {
                return $this->CountryId;
        }

        /**
         * Set the value of CountryId
         *
         * @return  self
         */ 
        public function setCountryId($CountryId)
        {
                $this->CountryId = $this->db->real_escape_string($CountryId);
        }

        /**
         * Get the value of Password
         */ 
        public function getPassword()
        {
                return password_hash($this->db->real_escape_string($this->Password), PASSWORD_BCRYPT , ['cost'=> 04]);
        }

        /**
         * Set the value of Password
         *
         * @return  self
         */ 
        public function setPassword($Password)
        {
                $this->Password = $Password;
        }

        /**
         * Get the value of DateOfRegistration
         */ 
        public function getDateOfRegistration()
        {
                return $this->DateOfRegistration;
        }

        /**
         * Set the value of DateOfRegistration
         *
         * @return  self
         */ 
        public function setDateOfRegistration($DateOfRegistration)
        {
                $this->DateOfRegistration = $this->db->real_escape_string($DateOfRegistration);

                return $this;
        }

        /**
         * Get the value of Address
         */ 
        public function getAddress()
        {
                return $this->Address;
        }

        /**
         * Set the value of Address
         *
         * @return  self
         */ 
        public function setAddress($Address)
        {
                $this->Address = $this->db->real_escape_string($Address);
        }

        /**
         * Get the value of Score
         */ 
        public function getScore()
        {
                return $this->Score;
        }

        /**
         * Set the value of Score
         *
         * @return  self
         */ 
        public function setScore($Score)
        {
                $this->Score = $this->db->real_escape_string($Score);
        }


        /**
         * Get the value of UsersRoles
         */ 
        public function getUsersRoles()
        {
                return $this->UsersRoles;
        }

        /**
         * Set the value of UsersRoles
         *
         * @return  self
         */ 
        public function setUsersRoles($UsersRoles)
        {
                $this->UsersRoles = $this->db->real_escape_string($UsersRoles);
        }


        /*actions*/
        public function getCountries()
        {
            $sql="SELECT * FROM Countries";
            
            $query=$this->db->query($sql);
          
            return $query;
        }

        public function getRoles()
        {
                $sql="SELECT * FROM Roles";
                $query=$this->db->query($sql);
                return $query;
        }

        public function save()
        {
                $sql="INSERT INTO Users VALUES(NULL,'{$this->getFirstname()}','{$this->getLastName()}','{$this->getEmail()}',
                                '{$this->getPhoneNumber()}',{$this->getCountryId()},'{$this->getPassword()}',CURDATE(),'{$this->getAddress()}',NULL);";
                
                $query=$this->db->query($sql);

                $sql= " INSERT INTO UsersRoles VALUES(NULL,(SELECT UserId FROM Users ORDER BY UserId DESC LIMIT 1),'{$this->getUsersRoles()}'); ";

                $query=$this->db->query($sql); 
               
                return $query;
        }

        public function login()
        {       
                $Password=$this->Password;
                $sql="SELECT * FROM Users WHERE Email='{$this->getEmail()}';";
              
                $login=$this->db->query($sql);
               
                
                if($login && $login->num_rows == 1)
                {
                        $usuario=$login->fetch_object();
                        
                        $verify=password_verify($Password,$usuario->Password);
                       
                        if($verify)
                        {
                                $result=$usuario;
                        }
                        return $result;

                }
        }

        public function update()
        {
                $sql= "UPDATE Users 
                       SET FirstName='{$this->getFirstname()}',LastName='{$this->getLastName()}',
                       PhoneNumber='{$this->getPhoneNumber()}', CountryId='{$this->getCountryId()}',
                       `Address`='{$this->getAddress()}', `Password`='{$this->getPassword()}'";
                
                $query=$this->db->query($sql);

                return $query;
        }

        

    }