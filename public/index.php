<?php 
    session_start();
    require_once '../config/database.php';
    require_once '../config/parameters.php';
    require_once '../helpers/Utils.php';
    require_once '../config/autoload.php';
    require_once '../views/layouts/header.php'; 
    require_once '../controllers/ErrorController.php';
   
    
    function error()
    {
        $show_error= new ErrorController();
        $show_error->index();
    }

    //Controller
    if(isset($_GET['controller']))
    {
        $nameController=$_GET['controller']."Controller";

    }
    elseif(!isset($_GET["controller"]) && !isset($_GET["action"]))
    {
        $nameController=default_controller;
    }
    else
    {
        error();
    }
    
    //controller action

    if(class_exists($nameController))
    {
        $controller=new $nameController();
        if(isset($_GET['action']) && method_exists($controller,$_GET['action']))
        {
            $action=$_GET['action'];
            $controller->$action();
        }
        elseif(!isset($_GET['controller']) && !isset($_GET['action']))
        {
            $default_action=default_action;
            $controller->$default_action();
        }
        else
        {
            error();
        }
    }
    else
    {
        error();
    }
    
   



    require_once '../views/layouts/footer.php' 
 
?>




