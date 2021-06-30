<?php 

    require_once '../models/Products.php';


    class ProductController
    {
        public function index()
        {
            
            require_once '../views/products/index.php';
        }

        
        public function search()
        {

        }

        public function datos()
        {
            $proCate= new Products();
            $proCate=$proCate->getCategories();

            require_once '../views/products/newP.php';

        }
        
        public function create()
        {
            if(isset($_POST))
            {
                $CategoryId=$_POST['CategoryId'] ? $_POST['CategoryId']:false;
                var_dump($_POST);
                die();
                $subcategoryId= new Products();
                $subcategoryId=$subcategoryId->getSubcategoriesId($CategoryId);

                require_once '../views/products/create.php';
            }
            else
            {

            }

            
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