<?php
    namespace classes\view;
    defined('_BOANN') or header("Location:{$_SERVER["REQUEST_SCHEME"]}://{$_SERVER["SERVER_NAME"]}");

class loginView{
    private     $_DB        =   NULL,
                $_CONFIG    =   NULL,
                $_SESSION   =   NULL;

    public function __construct(){
        $this->_DB          = NEW \classes\core\db;
        $this->_CONFIG      = NEW \classes\core\config;
        $this->_SESSION     = NEW \classes\core\session;
    }

    public function me(){
        $this->array    =   ["uuid" => "{$this->_SESSION->get($this->_CONFIG->get("boann/user"))}"];
        $this->query    = "SELECT * FROM `users` WHERE `id` = :uuid";
        $this->return   =   $this->_DB->get($this->query, $this->array);
        return $this->return;
    }

    public function updatePassword($data = ''){
            $this->password =   self::SetPassword($data);
            $this->user     =   (int) $this->_SESSION->get($this->_CONFIG->get("boann/user"));
            $this->query    =   "UPDATE `users`
                                    SET `password` = '{$this->password}'
                                    WHERE `id` = '{$this->user}'";
            return $this->_DB->action($this->query);
    }

    public function userData($data){
        $this->array    =   ["username" => "{$data}"];
        $this->query    =   "SELECT `id` FROM `users` WHERE `username` = :username ";
        $this->return   =   $this->_DB->get($this->query, $this->array);
        return $this->return;
    }

    public function SetPassword($data = ''){
        $options = ['cost' => 12];
        return password_hash($data, PASSWORD_BCRYPT, $options);
    }


    public function userExist($data){
        $this->array    =   ["username" => "{$data}"];
        $this->query    =   "SELECT COUNT(`username`) AS `exist` FROM `users` WHERE `username` = :username ";
        $this->return   =   $this->_DB->get($this->query, $this->array);
        return $this->return->exist;
    }


    public function passwordExist($username = "", $password = ""){
        return self::_chekUserPasswordexist($username, $password);
    }


    protected function _chekUserPasswordexist($username = "", $password = ""){
        $this->array    =   ["username" => "{$username}"];
        $this->query    =   "SELECT `password` FROM `users` WHERE `username` = :username ";
        $this->data   =   $this->_DB->get($this->query, $this->array);
        return password_verify($password, $this->data->password);
    }
}
