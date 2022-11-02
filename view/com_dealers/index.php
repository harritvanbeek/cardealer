<?php
    define('_BOANN', 1);
    require_once dirname(dirname(dirname(__file__))).'/libraries/import.php';

    $_POST      =   json_decode(file_get_contents("php://input"), true)["0"];
    $action     =   !empty($_GET["action"]) ? $_GET["action"] : null;

    $input      =   NEW \classes\core\input;
    $session    =   NEW \classes\core\session;
    $setting    =   NEW \classes\core\settings;
    $_config    =   NEW \classes\core\config;

    $dealer     =   NEW \classes\view\dealerView;


    switch($action){
        case "removeDealer" :
            if($input->exist()){
                $id      = !empty($input->get("data")["id"])    ? (int) $input->get("data")["id"]     : null;
                $name    = !empty($input->get("data")["name"])  ? $input->get("data")["name"]   : null;

                //chek dealer is empty on cars
                $count  =   $dealer->dealerCarExist($name);
                if($count > 0)  {$error = ["You can not delete this! there are {$count} vehicles of this category"];}

                if($input->exist() > 0 and empty($error) === true){
                    if($dealer->removeDealer($id) > 0){
                        $dataArray  =   [
                            "data"          =>  "success",
                            "dataContent"   =>  "System is bijgewerkt",
                        ];
                        echo json_encode($dataArray);
                    }else{
                        //errors
                        if(!empty($error)){
                            $dataArray  =   [
                                "data"          =>  "error",
                                "dataContent"   =>  "Er is een fout opgetreden probeer het later opnieuw",
                            ];
                            echo json_encode($dataArray);
                        }
                    };
                }else{
                    //errors
                    if(!empty($error)){
                        $dataArray  =   [
                            "data"      =>  "error",
                            "dataContent" =>  $error["0"],
                        ];
                        echo json_encode($dataArray);
                    }
                }
            }
        break;

        case "updateDealer" :
            if($input->exist()){
                $dealersid  = !empty($input->get("data")["id"])     ? $input->get("data")["id"]             : null;
                $dealers    = !empty($input->get("data")["dealer"]) ? escape($input->get("data")["dealer"]) : null;
                $name       = str_replace(' ', '', strtolower($dealers));
                $label      = $dealers;


                //chek dealer is empty on cars
                $count  =   $dealer->dealerCarExist($name);
                if($count > 0)  {$error = ["You can not update this! there are {$count} vehicles of this category"];}

                if($input->exist() > 0 and empty($error) === true){
                    $dataArray = [
                        "id"        => (int) "{$dealersid}",
                        "names"     => "{$name}",
                        "label"     => "{$label}",
                    ];

                    if($dealer->updateDealer($dataArray) > 0){
                        $dataArray  =   [
                            "data"          =>  "success",
                            "dataContent"   =>  "System is bijgewerkt",
                        ];
                        echo json_encode($dataArray);
                    }else{
                        //errors
                        if(!empty($error)){
                            $dataArray  =   [
                                "data"          =>  "error",
                                "dataContent"   =>  "Er is een fout opgetreden probeer het later opnieuw",
                            ];
                            echo json_encode($dataArray);
                        }
                    };
                }else{
                    //errors
                    if(!empty($error)){
                        $dataArray  =   [
                            "data"      =>  "error",
                            "dataContent" =>  $error["0"],
                        ];
                        echo json_encode($dataArray);
                    }
                }
            }
        break;

        case "addDealer" :
            if($input->exist()){
                $dealers = !empty($input->get("data")["dealer"]) ? escape($input->get("data")["dealer"]) : null;
                $name    = str_replace(' ', '', strtolower($dealers));
                $label   = $dealers;

                if(empty($dealers))                      { $error = ["Dealer naam is een verplichte veld"]; }
                elseif($dealer->dealerExist($name) > 0)  { $error = ["Dealer bestaat al!"]; }


                if($input->exist() > 0 and empty($error) === true){
                    $dataArray = [
                        "names"     => "{$name}",
                        "label"     => "{$label}",
                    ];

                    if($dealer->insertDealer($dataArray) > 0 ){
                        $dataArray  =   [
                            "data"          =>  "success",
                            "dataContent"   =>  "System is bijgewerkt",
                        ];
                        echo json_encode($dataArray);
                    }else{
                        //errors
                        if(!empty($error)){
                            $dataArray  =   [
                                "data"          =>  "error",
                                "dataContent"   =>  "Er is een fout opgetreden probeer het later opnieuw",
                            ];
                            echo json_encode($dataArray);
                        }
                    };
                }else{
                    //errors
                    if(!empty($error)){
                        $dataArray  =   [
                            "data"      =>  "error",
                            "dataContent" =>  $error["0"],
                        ];
                        echo json_encode($dataArray);
                    }
                }
            }
        break;

        case "getDealers" :

            $array = [
                "gta5cardealer",
                "gta5boatsdealer",
                "gta5helicopterdealer",
                "gta5motorsdealer",
                "premium",
            ];

            foreach($dealer->getDealers() as $item){
                if(!in_array($item->name, $array)){
                    $dataArray[] = [
                        "id"     =>  "{$item->id}",
                        "name"   =>  "{$item->name}",
                        "label"  =>  "{$item->label}",
                    ];
                }
            }
            echo json_encode($dataArray);
        break;
    }
