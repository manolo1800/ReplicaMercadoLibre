<form action="" method="post">
<div class="user_create"> 
    
    <label for="SubcategoryId">Subcategory</label><br>
    <select name="SubcategoryId" id="SubcategoryId" class="input">
        <option>selecciona una categoria</option>
        <?php while($sub=$subcategoryId->fetch_object()):?>
         <option value="<?=$sub->SubcategoryId?>"><?=$sub->SubcategoryName?></option>
        <?php endwhile; ?>
    </select><br><br>

    <label for="Name">Name</label><br>
    <input type="text" name="Name" class="input"><br><br>

    <label for="Description">Description</label><br>
    <textarea name="Description" id="" cols="30" rows="10"></textarea><br><br>

    <label for="Stock">Stock</label><br>
    <input type="text" name="Stock" class="input"><br><br>

    <label for="Price">Price</label><br>
    <input type="text" name="Price" class="input"><br><br>
</div>
</form>