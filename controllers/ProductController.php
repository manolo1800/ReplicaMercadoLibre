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
            if(isset($_POST))
            {
                $Name=$_POST['Name'];
                $search= new Products();
                $search->setName($Name);
                $search=$search->search();

                function ImagePath($ProductId)
                {
                    $imgP=new Products();
                    $imgP=$imgP->getImage($ProductId);

                    $impt=array();
                    while($row=$imgP->fetch_assoc())
                    {
                        $impt[]=array(
                            'ImagePath'=>$row['ImagePath']
                        );
                    }

                    return $impt;
                }
                
                require_once '../views/products/products.php';
            }
        }

        public function datos()
        {
            Utils::checkLogin();
            $proCate= new Products();
            $proCate=$proCate->getCategories();
            require_once '../views/products/newP.php';
        }
        
        public function create()
        {

            if(isset($_POST))
            {
                $CategoryId=$_POST['CategoryId'] ? $_POST['CategoryId']:false;
                $_SESSION['CategoryId']=$CategoryId;
                $subcategoryId= new Products();
                $subcategoryId=$subcategoryId->getSubcategories($CategoryId);
                require_once '../views/products/create.php';
            }
            else
            {
                header("location:".home_url."Products/datos");
            }

        }
        public function save()
        {
            Utils::checkLogin();
            if(isset($_POST))
            {
                $CategoryId=$_SESSION['CategoryId'];
                $SubcategoryId=$_POST['SubcategoryId'] ? $_POST['SubcategoryId']:false;
                $Name=$_POST['Name'] ? $_POST['Name']:false;
                $Description=$_POST['Description'] ? $_POST['Description']:false;
                $Stock=$_POST['Stock'] ? $_POST['Stock']:false;
                $Price=$_POST['Price'] ? $_POST['Price']:false;
                
                /*save Product*/
                $product= new Products();
                $product->setCategoryId($CategoryId);
                $product->setSubcategoryId($SubcategoryId);
                $product->setName($Name);
                $product->setDescription($Description);
                $product->setStock($Stock);
                $product->setPrice($Price);
                $product->save();
                
                /*save Image*/
                
                //function to list the last productId
                function ProductId()
                {
                    $productId=new Products();
                    $productId=$productId->getLastProduct();
                    $pdId=array();
                    while($row=$productId->fetch_assoc())
                    {
                        $pdId[]=array(
                            'ProductId'=>$row['ProductId']
                        );
                    }
                    return $pdId;
                }
                
                $productId=ProductId();
                foreach( $productId as $pdId )
                {
                    $ProductId=$pdId['ProductId'];
                    
                   
                    foreach($_FILES["ImagePath"]['tmp_name'] as $key => $tmp_name)
                    {
                        
                        if($_FILES["ImagePath"]["name"][$key])
                        {
                            $fileName=$_FILES["ImagePath"]["name"][$key];
                            $filetype=$_FILES["ImagePath"]["type"][$key];
                            $source=$_FILES["ImagePath"]['tmp_name'][$key];
                            
                            
                            if($filetype=="image/jpg" || $filetype=="image/jpeg" || $filetype=="image/png" || $filetype=="image/gif" )
                            {
                                $dir='uploads/products';

                                if(!file_exists($dir))
                                {
                                    mkdir($dir,0777);
                                }

                                $directory=opendir($dir);
                                $targetPath=$dir.'/'.$fileName;

                                move_uploaded_file($source,$targetPath);

                                closedir($directory);
                            }
                            $saveImage= new Products();
                            $saveImage->setProductId($ProductId);
                            $saveImage->saveImage($fileName);
                        }
                                
                    }   
                }
               
            }
        }

        
        public function edit()
        {
            require_once '../views/products/funcion.php';
        }
        public function updte()
        {

        }

        
        public function delete()
        {

        }


    }