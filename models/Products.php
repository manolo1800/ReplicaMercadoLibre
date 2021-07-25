<?php

    class Products
    {
        public $ProductId,$CategoryId,$SubcategoryId,$Name,$Description,$Stock,$Price,$DateOfRegistration,$DateOfUpdate;

        public function __construct()
        {
            $this->db=Database::Connect();
        }

        

        /**
         * Get the value of ProductId
         */ 
        public function getProductId()
        {
                return $this->ProductId;
        }

        /**
         * Set the value of ProductId
         *
         * @return  self
         */ 
        public function setProductId($ProductId)
        {
                $this->ProductId = $ProductId;

                return $this;
        }

        /**
         * Get the value of CategoryId
         */ 
        public function getCategoryId()
        {
                return $this->CategoryId;
        }

        /**
         * Set the value of CategoryId
         *
         * @return  self
         */ 
        public function setCategoryId($CategoryId)
        {
                $this->CategoryId = $CategoryId;

                return $this;
        }

        /**
         * Get the value of SubcategoryId
         */ 
        public function getSubcategoryId()
        {
                return $this->SubcategoryId;
        }

        /**
         * Set the value of SubcategoryId
         *
         * @return  self
         */ 
        public function setSubcategoryId($SubcategoryId)
        {
                $this->SubcategoryId = $SubcategoryId;

                return $this;
        }

        /**
         * Get the value of Name
         */ 
        public function getName()
        {
                return $this->Name;
        }

        /**
         * Set the value of Name
         *
         * @return  self
         */ 
        public function setName($Name)
        {
                $this->Name = $Name;

                return $this;
        }

        /**
         * Get the value of Descripcion
         */ 
        public function getDescription()
        {
                return $this->Description;
        }

        /**
         * Set the value of Descripcion
         *
         * @return  self
         */ 
        public function setDescription($Description)
        {
                $this->Description = $Description;

                return $this;
        }

        /**
         * Get the value of Stock
         */ 
        public function getStock()
        {
                return $this->Stock;
        }

        /**
         * Set the value of Stock
         *
         * @return  self
         */ 
        public function setStock($Stock)
        {
                $this->Stock = $Stock;

                return $this;
        }

        /**
         * Get the value of Price
         */ 
        public function getPrice()
        {
                return $this->Price;
        }

        /**
         * Set the value of Price
         *
         * @return  self
         */ 
        public function setPrice($Price)
        {
                $this->Price = $Price;

                return $this;
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
                $this->DateOfRegistration = $DateOfRegistration;

                return $this;
        }

        /**
         * Get the value of DateOfUpdate
         */ 
        public function getDateOfUpdate()
        {
                return $this->DateOfUpdate;
        }

        /**
         * Set the value of DateOfUpdate
         *
         * @return  self
         */ 
        public function setDateOfUpdate($DateOfUpdate)
        {
                $this->DateOfUpdate = $DateOfUpdate;

                return $this;
        }

        public function getCategories()
        {
                $sql="SELECT *
                FROM Categories ";
                $query=$this->db->query($sql);
                return $query;
        }

        public function getSubcategories($CategoryId)
        {
                $sql="SELECT * FROM SubCategories WHERE CategoryId=$CategoryId";
                $query=$this->db->query($sql);
                return $query;
        }
        
        public function save()
        {
                $sql="INSERT INTO Products VALUES
                      (NULL,{$this->getCategoryId()},{$this->getSubcategoryId()},
                      '{$this->getName()}','{$this->getDescription()}',{$this->getStock()},
                      {$this->getPrice()},CURDATE(),NULL)";
                $query=$this->db->query($sql);

                return $query;
        }
        public function getLastProduct()
        {
                $sql="SELECT ProductId FROM `Products` ORDER BY ProductId DESC LIMIT 1";
                $query=$this->db->query($sql);
                return $query;
        }

        public function saveImage($ImagePath)
        {
                $sql="INSERT INTO Images VALUES (NULL,{$this->getProductId()},'$ImagePath')";
                $query=$this->db->query($sql);
                return $query;
        }

        public function update()
        {

        }

        public function delete()
        {

        }

        public function search()
        {
                $sql="SELECT * FROM Products 
                      WHERE (Name LIKE '%{$this->getName()}%') OR
                            (Description LIKE '%{$this->getName()}%')
                      ";
                $query=$this->db->query($sql);

                return $query;
        }
        
        public function getImage($ProductId)
        {
                $sql="SELECT ImagePath FROM Images WHERE ProductId=$ProductId
                      ORDER BY ImageId ASC LIMIT 1 ";
                
                $query=$this->db->query($sql);

                return $query;
        }
        
    }