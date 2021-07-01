<form action="" method="post">
<div class="user_create"> 
<<<<<<< HEAD
    
    <label for="SubcategoryId">Subcategory</label><br>
    <select name="SubcategoryId" id="SubcategoryId" class="input">
        <option>selecciona una categoria</option>
        <?php while($sub=$subcategoryId->fetch_object()):?>
         <option value="<?=$sub->SubcategoryId?>"><?=$sub->SubcategoryName?></option>
        <?php endwhile; ?>
    </select><br><br>

=======
    <label for="CategoryId">Categories</label><br>
    <select name="CategoryId" id="CategoryId" class="input">
        <option>selecciona una categoria</option>
        <?php while($pro=$proCate->fetch_object()):?>
         <option value="<?=$pro->CategoryId?>"><?=$pro->CategoryName?></option>
        <?php endwhile; ?>
    </select><br><br>

    <div id="Subcategories"></div>
    <script type="text/javascript">
        $(document).ready(function()
        {
            recargarLista();

            $('#CategoryId').change(function()
            {
                recargarLista();
            });
        })
    </script>        
    <script type="text/javascript">
        function recargarLista()
        {
            $.ajax
            ({
                type:"POST",
                url:"<?=home_url?>Product/datos",
                data:"CategoryId=" + $('#lista').val(),
                success:function(r)
                {
                    $('#SubcategoryId').html(r);
                }
            });
        }
    </script>

    <!--<label for="SubCategoryId">Subcategories</label><br>
    <select name="SubCategoryId" id="" class="input">
        <option value=""></option>
    </select><br><br>-->

>>>>>>> 82d762fa503cb7d573305076886897acfd9a977f
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