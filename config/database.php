<?

    class Database 
    {
        public static function Connect()
        {
            $db= new mysqli("localhost","root","","ReplicaMercadoLibre");
            $db->query("SET NAME utf8");
            
            return $db;
        }
    }