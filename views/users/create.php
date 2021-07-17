<h1 class="title_user_create">completa tus datos</h1>


    <form action="<?=home_url?>User/save" method="POST">
        <div class="user_create">
            <label for="FirstName">First name</label><br>
            <input type="text" name="FirstName" class="input"><br><br>

            <label for="LastName">Last name</label><br>
            <input type="text" name="LastName" class="input"><br><br>

            <label for="Email">Email</label><br>
            <input type="email" name="Email" class="input"><br><br>

            <label for="PhoneNumber">Phone number</label><br>
            <input type="text" name="PhoneNumber" class="input"><br><br>

            <label for="CountryId">Country</label><br>
            <select name="CountryId" id="" class="input">
                <?php while($q = $countries->fetch_object()):?>    
                    <option value="<?=$q->CountryId?>"><?=$q->CountryName?></option>
                <?php endwhile;?>
            </select><br><br>
        

            <label for="Address">address</label><br>
            <input type="text" name="Address" class="input"><br><br>
            
            <label for="UsersRoles" >role</label><br>
            <select name="UsersRoles" id="UsersRoles" class="input">
                <?php while($r=$Roles->fetch_object()): ?>        
                    <option value="<?=$r->RoleId?>" class="option"><?=$r->RoleName?></option>
                <?php endwhile; ?>    
            </select><br><br>
            
            <label for="Password">Password</label><br>
            <input type="password" name="Password" class="input"><br><br>
        </div>
        <button type="submit" class="create">
            <span class="create_span">Continue</span>
        </button>

    </form>   


