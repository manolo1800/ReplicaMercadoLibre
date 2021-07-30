
<?php while($pds=$search->fetch_object()):?>
    <div class="recomended">
        
        <div class="recomendation_i">
            <a href="<?=home_url?>Product/getProduct&ProdId=<?=$pds->ProductId?>"><?php $image=ImagePath($pds->ProductId)?>
            <?php foreach($image as $imgpth):?>
                <img src="<?=home_url?>uploads/products/<?=$imgpth['ImagePath']?>" alt="" class="recomendation_image">
            <?php endforeach?>
            <p><?=$pds->Name?><br></p>
            <p class="price">$USD <?=$pds->Price?></p></a>
        </div>
    </div>    
       
            
<?php endwhile;?>
