<?php
    define('_BOANN', 1);
    require_once dirname(dirname(dirname(__file__))).'/libraries/import.php';

    $_POST      =   json_decode(file_get_contents("php://input"), true)["0"];
    $action     =   !empty($_GET["action"]) ? $_GET["action"] : null;

    $input      =   NEW \classes\core\input;
    $session    =   NEW \classes\core\session;
    $setting    =   NEW \classes\core\settings;
    $_config    =   NEW \classes\core\config;
    $brands     =   NEW \classes\view\brandsView;

    switch($action){
        case "updateBrand" :
            if($input->exist()){
                $uuid       =   !empty($input->get("data")["uuid"])     ? $input->get("data")["uuid"]   : null;
                $brand      =   !empty($input->get("data")["brands"])   ? $input->get("data")["brands"] : null;
                $name       =   str_replace(' ', '', strtolower($brand));

                if($input->exist() > 0 and empty($error) === true){
                    $dataArray =    [
                        "uuid"  =>  "{$uuid}",
                        "name"  =>  "{$name}",
                        "label" =>  "{$brand}",
                    ];

                    if($brands->updateBrand($dataArray) > 0){
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

        case "insertBrand" :
            if($input->exist()){
                $brand  =   !empty($input->get("data")["brands"]) ? $input->get("data")["brands"] : null;
                $name       = str_replace(' ', '', strtolower($brand));
                //chek brand name exist
                if($input->exist() > 0 and empty($error) === true){
                    $dataArray =    [
                        "uuid"  =>  "{$setting->MakeUuid()}",
                        "name"  =>  "{$name}",
                        "label" =>  "{$brand}",
                    ];

                    if($brands->insertData($dataArray) > 0){
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

        case "getBrands" :
            //$brands->severCars();
            echo json_encode($brands->getBrands());
        break;
    };
