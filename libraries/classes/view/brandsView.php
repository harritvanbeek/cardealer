<?php
    namespace classes\view;
    defined('_BOANN') or header("Location:{$_SERVER["REQUEST_SCHEME"]}://{$_SERVER["SERVER_NAME"]}");

class brandsView{
    private     $_DB        =   NULL,
                $_CONFIG    =   NULL,
                $_SESSION   =   NULL;

    public function __construct(){
        $this->_DB          = NEW \classes\core\db;
        $this->_CONFIG      = NEW \classes\core\config;
        $this->_SESSION     = NEW \classes\core\session;
    }

    public function updateBrand($data = []){
        $this->query = "UPDATE `vehicle_brands`
                            SET
                                `name`  = '{$data["name"]}',
                                `label` = '{$data["label"]}'

                            WHERE `uuid` = '{$data["uuid"]}'
                        ";
        return $this->_DB->action($this->query);
    }

    public function insertData($data = []){
        $this->query = "INSERT INTO `vehicle_brands` (`uuid`, `name`, `label`) VALUES (:uuid, :name, :label) ";
        return $this->_DB->action($this->query, $data);
    }

    public function severCars(){
        $this->query    = "SELECT `uuid` FROM `vehicle_brands` WHERE `name` = 'audi' ";
        $this->uuid     = $this->_DB->get($this->query)->uuid;
        //debug($this->uuid);


        $this->query    = "SELECT * FROM `server-cars` WHERE `type` = 'premium' AND `vehiclebrand` = 'Audi' ";
        $this->cars     = $this->_DB->getAll($this->query);

        foreach($this->cars as $car){
            $this->query  = "UPDATE `server-cars` SET `vehiclebrand` = '{$this->uuid}' WHERE `id` = '$car->id' ";
            $this->return = $this->_DB->action($this->query);
            debug($this->return ,1 );
        }


    }

    public function getBrands(){
        $this->query = "SELECT * FROM `vehicle_brands` ";
        return $this->_DB->getAll($this->query);
    }
}
