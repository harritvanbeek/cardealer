<?php
    define('_BOANN', 1);
    require_once dirname(dirname(dirname(__file__))).'/libraries/import.php';

    $_POST      =   json_decode(file_get_contents("php://input"), true)["0"];
    $action     =   !empty($_GET["action"]) ? $_GET["action"] : null;

    $input      =   NEW \classes\core\input;
    $session    =   NEW \classes\core\session;
    $setting    =   NEW \classes\core\settings;
    $_config    =   NEW \classes\core\config;
    $cardealer  =   NEW \classes\view\cardealerView;


    switch($action){
        case "removecar" :
            $carid  =   !empty($input->get("data")["id"]) ? $input->get("data")["id"]   : null;
            if($carid){
                if($cardealer->removeCar($carid) > 0){
                    $dataArray= [
                        "data"          => "success",
                        "dataContent"   => "Systeem is bijgewerkt",
                    ];
                }else{
                    $dataArray= [
                        "data"          => "error",
                        "dataContent"   => "er is een fout opgetreden probeer het later opnieuw",
                    ];
                };
                    echo json_encode($dataArray);
            }
        break;

        case "getAllCars" :
            $cars = $cardealer->getAllcars();
            if($cars){
                foreach($cars as $car){
                    $dataArray[] = [
                        "id"                    =>  "{$car->id}",
                        "vehiclename"           =>  "{$car->vehiclename}",
                        "vehicledisplayname"    =>  "{$car->vehicledisplayname}",
                        "vehiclebrand"          =>  "{$car->vehiclebrand}",
                        "vehicleclass"          =>  "{$car->vehicleclass}",
                        "stock"                 =>  "{$car->stock}",
                        "assets"                =>  "{$car->assets}",
                        "price"                 =>  "{$car->price}",
                        "type"                  =>  "{$car->type}",
                    ];
                }

                echo json_encode( $dataArray );
            }
        break;
    }
