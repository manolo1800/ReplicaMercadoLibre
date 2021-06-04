<?php

    require_once '../models/User.php';

    class UserController
    {
        public function index()
        {
            echo "User Index";
        }

        //create user
        public function create()
        {
            
            $user= new User();
            $countries=$user->getCountries();
            $Roles=$user->getRoles();
            

            require_once '../views/users/create.php';
        }

        public function save()
        {
            if(isset($_POST))
            {
                $FirstName=$_POST['FirstName'];
                $LastName=$_POST['LastName'];
                $Email=$_POST['Email'];
                $PhoneNumber=$_POST['PhoneNumber'];
                $Countries=$_POST['CountryId'];
                $Address=$_POST['Address'];
                $Password=$_POST['Password'];
                $UsersRoles=$_POST['UsersRoles'];

                $user= new User();
                $user->setFirstname($FirstName);
                $user->setLastName($LastName);
                $user->setEmail($Email);
                $user->setPhoneNumber($PhoneNumber);
                $user->setCountryId($Countries);
                $user->setAddress($Address);
                $user->setUsersRoles($UsersRoles);
                $user->setPassword($Password);
                $save=$user->save();

                if($save)
                {
                    $_SESSION['register']="completed";
                }
                else
                {
                    $_SESSION['register']="failed";
                }
            }
            else
            {
                $_SESSION['register']="failed";
            }
            header('location:'.home_url);
        }

        //update perfil user
        public function edit()
        {
            require_once '../views/users/edit.php';
        }

        public function update()
        {
            if(isset($_POST))
            {
                $FirstName=$_POST['FirstName'];
                $LastName=$_POST['LastName'];
                $PhoneNumber=$_POST['PhoneNumber'];
                $Countries=$_POST['CountryId'];
                $Address=$_POST['Address'];
                $Password=$_POST['Password'];
                $UsersRoles=$_POST['UsersRoles'];

                $user= new User();
                $user->setFirstname($FirstName);
                $user->setLastName($LastName);
                $user->setPhoneNumber($PhoneNumber);
                $user->setCountryId($Countries);
                $user->setAddress($Address);
                $user->setUsersRoles($UsersRoles);
                $user->setPassword($Password);
                $user->update();

            }
            header("location:".home_url."User/edit");
        }

        //login and logout

        public function singIn()
        {
            require_once '../views/users/sing_in.php';
        }

        public function login()
        {
            if(isset($_POST))
            {
                $Email=$_POST['Email'];
                $Password=$_POST['Password'];

                $user= new User();
                $user->setEmail($Email);
                $user->setPassword($Password);
                $login=$user->login();

                if($login)
                {
                    $_SESSION['login']=$login;
                    
                }
                else
                {
                    $_SESSION['login']="failed";
                }
                
            }
            else
            {
                $_SESSION['login']="failed";
            }

            header("location:".home_url);
        }

        public function logout()
        {
            Utils::deleteSession('login');

            header("location:".home_url);
        }

    }