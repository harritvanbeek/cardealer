<?php
    namespace classes\view;
    defined('_BOANN') or header("Location:{$_SERVER["REQUEST_SCHEME"]}://{$_SERVER["SERVER_NAME"]}");

class showroomView{
    private     $_DB        =   NULL,
                $_CONFIG    =   NULL,
                $_SESSION   =   NULL;

    public function __construct(){
        $this->_DB          = NEW \classes\core\db;
        $this->_CONFIG      = NEW \classes\core\config;
        $this->_SESSION     = NEW \classes\core\session;
    }

    public function view(){
        require_once "view/com_showroom/index.php";
    }



    public function getCars(){
        $this->query = "SELECT
                            `server-cars`.`vehicledisplayname`,
                            `server-cars`.`stock`,
                            `server-cars`.`price`,
                            `server-cars`.`assets`,
                            `vehicle_brands`.`label`

                            FROM `server-cars`
                                LEFT JOIN `vehicle_brands`
                                ON `vehicle_brands`.`uuid` = `server-cars`.`vehiclebrand`
                            WHERE `type` = 'premium'";
        return $this->_DB->getAll($this->query);
    }

}
