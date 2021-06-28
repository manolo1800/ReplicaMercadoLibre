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
            $Subcategory=new Products();
            
            $cadena=" <label>Subcategories</label>
                      <select id='SubcategoryId' name='SubcategoryId'>";
        }
        
        public function create()
        {
            $proCate= new Products();
            $proCate=$proCate->getCategories();

            require_once '../views/products/create.php';
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