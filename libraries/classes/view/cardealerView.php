<?php
    namespace classes\view;
    defined('_BOANN') or header("Location:{$_SERVER["REQUEST_SCHEME"]}://{$_SERVER["SERVER_NAME"]}");

class cardealerView{
    private     $_DB        =   NULL,
                $_CONFIG    =   NULL,
                $_SESSION   =   NULL;

    public function __construct(){
        $this->_DB          = NEW \classes\core\db;
        $this->_CONFIG      = NEW \classes\core\config;
        $this->_SESSION     = NEW \classes\core\session;
    }

    public function updateCar($data){
        $this->query =  "UPDATE `server-cars`
                            SET
                                `vehiclename`        = '{$data["vehiclename"]}',
                                `vehicledisplayname` = '{$data["vehicledisplayname"]}',
                                `vehiclebrand`       = '{$data["vehiclebrand"]}',
                                `vehicleclass`       = '{$data["vehicleclass"]}',
                                `stock`              = '{$data["stock"]}',
                                `price`              = '{$data["price"]}',
                                `assets`             = '{$data["assets"]}',
                                `type`               = '{$data["types"]}'
                            WHERE `id` = '{$data["id"]}' ";
        return $this->_DB->action($this->query);
    }

    public function removeCar($data){
        $this->array    = ["id" => "{$data}"];
        $this->query    =   "DELETE FROM `server-cars` WHERE `id` = :id";
        return $this->_DB->action($this->query, $this->array);
    }

    public function getThisCar($data){
        $this->array = ["vehiclename" => "{$data}"];
        $this->query = "SELECT * FROM `server-cars` WHERE `vehiclename` = :vehiclename";
        return $this->_DB->get($this->query, $this->array);
    }

    public function vehicleExist($data){
        $this->array = ["vehiclename" => "{$data}"];
        $this->query = "SELECT count(`vehiclename`) as `exist` FROM `server-cars` WHERE `vehiclename` = :vehiclename";
        return $this->_DB->get($this->query, $this->array)->exist;
    }

    public function insert($data){
        $this->query = "INSERT INTO `server-cars` (`vehiclename`, `vehicledisplayname`, `vehiclebrand`, `vehicleclass`, `stock`, `price`, `assets`, `type`)
            VALUES (:vehiclename, :vehicledisplayname, :vehiclebrand, :vehicleclass, :stock, :price, :assets, :types)";
        return $this->_DB->action($this->query, $data);
    }

    public function getCatogory(){
        $this->query = "SELECT * FROM `vehicle_categories` ";
        return $this->_DB->getAll($this->query);
    }

    public function getAllcars(){
        $this->query = "SELECT * FROM `server-cars` ";
        return $this->_DB->getAll($this->query);
    }

    public  function getDealers(){
        $this->query = "SELECT * FROM `vehicles_dealerships` ";
        return $this->_DB->getAll($this->query);
    }
}