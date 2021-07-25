<?php while($pds=$search->fetch_object()):?>
      
        <?=$pds->Name?><br>
        <?=$pds->Description?>
        <?php $image=ImagePath($pds->ProductId)?>
        <?php foreach($image as $imgpth):?>
            <img src="<?=home_url?>uploads/products/<?=$imgpth['ImagePath']?>" alt="">
        <?php endforeach?>

        
<?php endwhile;?>
