<?php

    require_once '../models/Categories.php';

    class CategoryController
    {
        public function index()
        {
            
            function categories()
            {
                $categories= new categories();
                $categories=$categories->getAll();
                
                $cts=array();
                while($row=$categories->fetch_assoc())
                {
                    $cts[]=array(
                        'CategoryName'=> $row['CategoryName'],
                        'CategoryId'=> $row['CategoryId'],
                        
                    );
                }
                return $cts;
            }
            
                $categories=categories();
                $cts=count($categories);
                

                function subcategory($id)
                {
                    $subcategory= new Categories();
                    $subcategory=$subcategory->subCategory($id);

                    $sc=array();
                    while($row=$subcategory->fetch_assoc())
                    {
                        $sc[]=array(
                            'SubcategoryName'=>$row['SubcategoryName']
                        );
                    }
                    

                   return $sc;
                }

                
            
            require_once '../views/categories/categories.php';
        }
    }

?>