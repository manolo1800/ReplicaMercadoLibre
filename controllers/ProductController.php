<?php 

    require_once '../models/Product.php';

    class ProductController
    {
        public function index()
        {
            
            require_once '../views/products/index.php';
        }

        
        public function search()
        {

        }

        
        public function create()
        {
            require_once '../views/Product/create.php';
        }
        public function save()
        {
            if(isset($_POST))
            {
                $CategoryId=$_POST['CategoryId'];
            }
        }

        
        public function edit()
        {
            
        }
        public function updte()
        {

        }

        
        public function delete()
        {

        }


    }