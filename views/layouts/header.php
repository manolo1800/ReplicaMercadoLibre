<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SuperiorQuality</title>
    <link rel="stylesheet" href="<?=home_url?>/css/superiorQuality.css">
</head>
<body>
    
    <div class="container">
        <header class=nav_header>
            <div class="navs_bounds">
                <a href="<?=home_url?>Product/index" class="nav_logo"><img src="<?=home_url?>uploads/img/logo3.png" alt=""></a>
                
                
                <div class="nav_menu_header_menu_wrapper">
                    <div class="nav_menu_header">
                        <!--<a href="" class="exhibitor_picture"><img src="<?=home_url?>uploads/img/logo2.png" alt=""></a>-->
                        <?php if(!isset($_SESSION['login'])):?>
                            <a href="<?=home_url?>User/create">crea tu cuenta</a>
                            <a href="<?=home_url?>User/singIn">Ingresa</a>
                        <?php else: ?>
                            
                            <a href=""><?=$_SESSION['login']->FirstName?></a>
                            <a href="<?=home_url?>/User/logout">mis compras</a>
                        <?php endif; ?>
                        
                    </div>
                </div>
                
                
                    <form action="GET" class="nav_search">
                        <input type="text" class="nav_Search_input">
                    </form>
                    
                
                <div class="nav_menu">
                    <ul class="nav_menu_list">
                        <li class="nav_menu_item"><a href="" class="nav_menu_categories_trigger">categorias</a></li>
                        <li class="nav_menu_item"><a href="" class="nav_menu_item_link" >historial</a></li>
                        <li class="nav_menu_item"><a href="" class="nav_menu_item_link" >tiendas oficiales</a></li>
                        <li class="nav_menu_item"><a href="" class="nav_menu_item_link">ofertas de la semana</a></li>
                        <li class="nav_menu_item"><a href="" class="nav_menu_item_link">vender</a></li>
                        <li class="nav_menu_item"><a href="" class="nav_menu_item_link">ayuda</a></li>
                    </ul>
                </div>
                
                
            </div>
        </header>
        <div class="main">
            