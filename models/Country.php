<?php

    class Countries
    {
        public $CountryId,$Code,$Iso3166a1,$Iso3166a2,$CountryName;

        public function __construct()
        {
            $this->db= Database::Connect();
        }

        

        /**
         * Get the value of CountryId
         */ 
        public function getCountryId()
        {
                return $this->CountryId;
        }

        /**
         * Get the value of Code
         */ 
        public function getCode()
        {
                return $this->Code;
        }

        /**
         * Get the value of Iso3166a1
         */ 
        public function getIso3166a1()
        {
                return $this->Iso3166a1;
        }

        /**
         * Get the value of Iso3166a2
         */ 
        public function getIso3166a2()
        {
                return $this->Iso3166a2;
        }

        /**
         * Get the value of CountryName
         */ 
        public function getCountryName()
        {
                return $this->CountryName;
        }

        /**
         * Set the value of CountryId
         *
         * @return  self
         */ 
        public function setCountryId($CountryId)
        {
                $this->CountryId = $CountryId;

                return $this;
        }

        public function getAll()
        {
            $sql="SELECT * FROM Countries";
            $query=$this->db->query($sql);
            
            return $query;
        }
    }