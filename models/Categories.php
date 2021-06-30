<?php

    class Categories
    {
        public $categoryId,$categoryName;

        public function __construct()
        {
            $this->db=Database::Connect();
        }

        

        /**
         * Get the value of categoryId
         */ 
        public function getCategoryId()
        {
                return $this->categoryId;
        }

        /**
         * Set the value of categoryId
         *
         * @return  self
         */ 
        public function setCategoryId($categoryId)
        {
                $this->categoryId = $categoryId;
        }

        /**
         * Get the value of categoryName
         */ 
        public function getCategoryName()
        {
                return $this->categoryName;
        }

        /**
         * Set the value of categoryName
         *
         * @return  self
         */ 
        public function setCategoryName($categoryName)
        {
                $this->categoryName = $categoryName;
        }

        public function getAll()
        {
            $sql="SELECT *
                  FROM Categories ";
            $query=$this->db->query($sql);
            return $query;
        }

        public function subCategory($id)
        {
            $sql="SELECT * FROM SubCategories WHERE CategoryId='$id'";
            $query=$this->db->query($sql);
            
            return $query;
        }

        /*public function getSubcategories()
        {
            $sql="SELECT c.CategoryName as 'Category',s.SubcategoryName as 'Subcategory'
                  FROM Categories c
                  INNER JOIN SubCategories USING CategoryId
                  ON s.CategoryId=c.CategoryId";
            $query=$this->db->query($sql);
            return $query;
        }*/
    }