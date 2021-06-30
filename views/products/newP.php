<form action="<?=home_url?>Product/create" method="post">
<div class="user_create"> 

<label for="CategoryId">Categories</label><br>
    <select name="CategoryId" id="CategoryId" class="input">
        <option>selecciona una categoria</option>
        <?php while($pro=$proCate->fetch_object()):?>
         <option value="<?=$pro->CategoryId?>"><?=$pro->CategoryName?></option>
        <?php endwhile; ?>
    </select><br><br>

    <input type="submit" value="continue">

</div>
</form>