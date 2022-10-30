<?php
    define('_BOANN', 1);
    require_once dirname(dirname(dirname(__file__))).'/libraries/import.php';

    $_POST      =   json_decode(file_get_contents("php://input"), true)["0"];
    $action     =   !empty($_GET["action"]) ? $_GET["action"] : null;

    $input      =   NEW \classes\core\input;
    $session    =   NEW \classes\core\session;
    $setting    =   NEW \classes\core\settings;
    $_config    =   NEW \classes\core\config;

    $login      =   NEW \classes\view\loginView;


    switch($action){
        case "login" :
            if($input->exist() > 0){
                $username   =   !empty($input->get("data")["username"]) ? $input->get("data")["username"] : null;
                $password   =   !empty($input->get("data")["password"]) ? $input->get("data")["password"] : null;

                //debug($login->SetPassword($password), 1);
                //die;
                if(empty($username)     === true)                       { $error = ["username is een verplichte veld"];}
                elseif(strlen($username) > 63)                          { $error = ["Het opgegeven username is te lang"];}
                elseif($login->userExist($username) < 1)                { $error = ["username is onjuist"];}
                elseif(empty($password) === true)                       { $error = ["Wachtwoord is een verplichte veld"];}
                elseif($login->passwordExist($username, $password) < 1) { $error = ["Het opgegeven wachtwoord is onjuist"];}

                if($input->exist() > 0 and empty($error) === true){
                    $me =   $login->userData($username);
                    //set session
                    $session->put($_config->get("boann/user"), $me->id);

                    //send rederect url in json
                    $dataArray  =   [
                        "data"      =>  "success",
                        "location"  =>  SITE,
                    ];
                    echo json_encode($dataArray);

                    //debug("login : {$me->id}", 1);
                }else{
                    if(!empty($error)){
                        $dataArray  =   [
                            "data"      =>  "error",
                            "dataError" =>  $error["0"],
                        ];
                        echo json_encode($dataArray);
                    }
                }



            }
        break;
    }
