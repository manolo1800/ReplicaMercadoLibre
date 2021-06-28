
<?php foreach($categories as $category):?>
    <h2><?=$category['CategoryName']?></h2><br>
    
    <?php for($i=$category['CategoryId'];$i==$category['CategoryId'];$i++):?>
        <?php $subcategories=subcategory($i);?>

        <?php foreach($subcategories as $subcategory):?>

            <?=$subcategory['SubcategoryName']?><br>

        <?php endforeach;?>

    <?php endfor ?>

<?php endforeach?>


