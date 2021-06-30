<div class="categories">
<?php foreach($categories as $category):?>
    <h2 class="h2-C"><?=$category['CategoryName']?></h2><br>
    <div class="subcategories">
        <?php for($i=$category['CategoryId'];$i==$category['CategoryId'];$i++):?>
            <?php $subcategories=subcategory($i);?>

            <?php foreach($subcategories as $subcategory):?>

                <h4 class="h4-C"><?=$subcategory['SubcategoryName']?></h4>

            <?php endforeach;?>

        <?php endfor ?>
    </div>
    <?php if($category['CategoryId']!=30):?>
        <hr class="hr-C">
    <?php endif;?>
<?php endforeach?>
</div>

