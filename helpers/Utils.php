<?php

    class Utils
    {
        public static function  deleteSession($session)
        {
            if(isset($_SESSION[$session]))
            {
                $_SESSION[$session]= null;
                unset($_SESSION[$session]);

                return $session;
            }
        }

        public static function checkLogin()
        {
            if(!isset($_SESSION['login']) || $_SESSION['login']=='failed')
            {
                header('location:'.home_url.'/User/singIn');
            }
        }
    }