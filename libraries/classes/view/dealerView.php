<?php
    namespace classes\view;
    defined('_BOANN') or header("Location:{$_SERVER["REQUEST_SCHEME"]}://{$_SERVER["SERVER_NAME"]}");

class dealerView{
    private     $_DB        =   NULL,
                $_CONFIG    =   NULL,
                $_SESSION   =   NULL;

    public function __construct(){
        $this->_DB          = NEW \classes\core\db;
        $this->_CONFIG      = NEW \classes\core\config;
        $this->_SESSION     = NEW \classes\core\session;
    }

    public  function removeDealer($data){
        $this->query = "DELETE FROM `vehicles_dealerships` WHERE `id` = '{$data}' ";
        return $this->_DB->action($this->query);
    }

    public  function dealerExist($data){
        $this->array = ["name" => "{$data}"];
        $this->query = "SELECT COUNT(`name`) as `exist`
                            FROM `vehicles_dealerships`
                            WHERE `name` = :name
                        ";
        return $this->_DB->get($this->query, $this->array)->exist;
    }

    public function dealerCarExist($data){
        $this->array = ["type" => "{$data}"];
        $this->query = "SELECT COUNT(`type`) as `exist`
                            FROM `server-cars`
                            WHERE `type` = :type
                        ";
        return $this->_DB->get($this->query, $this->array)->exist;
    }

    public  function updateDealer($data = []){
        $this->query = "UPDATE `vehicles_dealerships`
                            SET
                                `name`  = '{$data["names"]}',
                                `label` = '{$data["label"]}'
                            WHERE `id` = '{$data["id"]}'
                        ";
        return $this->_DB->action($this->query);
    }

    public  function insertDealer($data = []){
        $this->query = "INSERT INTO `vehicles_dealerships` ( `name`, `label`) VALUES (:names, :label)";
        return $this->_DB->action($this->query, $data);
    }

    public  function getDealers(){
        $this->query = "SELECT * FROM `vehicles_dealerships` ";
        return $this->_DB->getAll($this->query);
    }
}
