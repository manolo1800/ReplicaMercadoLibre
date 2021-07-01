<?php 

    require_once '../models/Products.php';
<<<<<<< HEAD

=======
>>>>>>> 82d762fa503cb7d573305076886897acfd9a977f

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
<<<<<<< HEAD
            $proCate= new Products();
            $proCate=$proCate->getCategories();

            require_once '../views/products/newP.php';

=======
            $Subcategory=new Products();
            
            $cadena=" <label>Subcategories</label>
                      <select id='SubcategoryId' name='SubcategoryId'>";
>>>>>>> 82d762fa503cb7d573305076886897acfd9a977f
        }
        
        public function create()
        {
<<<<<<< HEAD
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

            
=======
            $proCate= new Products();
            $proCate=$proCate->getCategories();

            require_once '../views/products/create.php';
>>>>>>> 82d762fa503cb7d573305076886897acfd9a977f
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