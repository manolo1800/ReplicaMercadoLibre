<?php if(isset($_SESSION['register']) && $_SESSION['register']=="completed"):?>
    <script>window.alert('the user has been created successfully')</script> 

<?php elseif(isset($_SESSION['register']) && $_SESSION['register']=="failed"):?>
    <script>window.alert('the user could not be created')</script> 

<?php endif;?>

<?php Utils::deleteSession('register'); ?>

<section class="exhibitor"  >
    <img src="<?=home_url?>uploads/img/exhibitor2.png" alt="" class="img_Exhibitor">
</section>

<div class="home">
    <h3 class="title_recomended">Basado en tu última visita <a href="" class="browsing_history"> Ver historial</a></h3>
    <div class="recomended">
        
        <div class="recomendation_i">
            <img src="<?=home_url?>uploads/img/gpu.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>
    
        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/gpu2.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/gpu3.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/gpu4.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/gpu5.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

    </div>

    <h3 class="title_recomended">Relacionado con tus visitas en <a href="" class="browsing_history"> Ver historial</a></h3>
    <div class="recomended">
        
        <div class="recomendation_i">
            <img src="<?=home_url?>uploads/img/relacionado.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>
    
        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/relacionado2.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/relacionado3.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/relacionado4.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/relacionado5.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

    </div>

    <h3 class="title_recomended">Relacionado con tus visitas en <a href="" class="browsing_history"> Ver historial</a></h3>
    <div class="recomended">
        
        <div class="recomendation_i">
            <img src="<?=home_url?>uploads/img/tambien.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>
    
        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/tambien2.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/tambien3.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/tambien4.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

        <div class="recomendation">
            <img src="<?=home_url?>uploads/img/tambien5.png" alt="" class="recomendation_image">
            <p class="price">precio</p>
        </div>

    </div>

    

</div>




