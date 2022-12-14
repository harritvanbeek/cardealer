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
    $login      =   NEW \classes\view\loginView;


    switch($action){
        case "updatePassword" :
            if($input->exist()){
                $password           =   !empty($input->get("data")["password"])         ? escape($input->get("data")["password"])           : null;
                $password_again     =   !empty($input->get("data")["password_again"])   ? escape($input->get("data")["password_again"])     : null;

                if(empty($password))                    {$error = ["Nieuw wachtwoord is een verplichte veld"];}
                elseif(empty($password_again))          {$error = ["Herhaal nieuw wachtwoord is een verplichte veld"];}
                elseif($password !== $password_again)   {$error = ["Wachtwoorden zijn niet gelijk aan elkaar"];}

                if($input->exist() > 0 and empty($error) === true){
                    //update password
                    if($login->updatePassword($password) > 0){
                        $dataArray= [
                            "data"          => "success",
                            "dataContent"   => "Je wachtwoord is bijgewerkt",
                        ];
                    }else{
                        $dataArray= [
                            "data"          => "error",
                            "dataContent"   => "er is een fout opgetreden probeer het later opnieuw",
                        ];
                    };
                    echo json_encode($dataArray);
                }else{
                    //errors
                    if(!empty($error)){
                        $dataArray  =   [
                            "data"      =>  "error",
                            "dataContent" =>  $error["0"],
                        ];
                        echo json_encode($dataArray);
                    }
                };
            }
        break;

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

        case "getFilterCars" :
            if($input->exist()){
                $shop           = !empty($input->get("data")["shop"]) ? $input->get("data")["shop"] : NULL;
                $vehicleclass   = !empty($input->get("data")["vehicleclass"]) ? explode("|", $input->get("data")["vehicleclass"])["0"]  : NULL;

               if(!empty($shop)){
                    $dataList = $cardealer->getFilterCars($shop);
                }elseif(!empty($vehicleclass)){
                    $dataList = $cardealer->getFilterCars($vehicleclass);
                }

                if($dataList){
                    foreach($dataList as $car){
                        $dataArray[] = [
                            "id"                    =>  "{$car->id}",
                            "vehiclename"           =>  "{$car->vehiclename}",
                            "vehicledisplayname"    =>  "{$car->vehicledisplayname}",
                            "vehiclebrand"          =>  !empty($car->label) ? "{$car->label}" :  "{$car->vehiclebrand}",
                            "vehicleclass"          =>  "{$car->vehicleclass}",
                            "stock"                 =>  "{$car->stock}",
                            "assets"                =>  "{$car->assets}",
                            "price"                 =>  "{$car->price}",
                            "type"                  =>  "{$car->type}",
                        ];
                    }
                    echo json_encode($dataArray);
                }
            }
        break;

        case "getShops" :
            echo json_encode($cardealer->getShops());
        break;

        case "exportBrands" :
            echo json_encode($cardealer->exportBrands());
        break;

        case "getExportCars" :
            if($input->exist()){
                $uuid = !empty($input->get("data")) ? $input->get("data") : null;
                $data = $cardealer->getExportCars($uuid);
                foreach($data as $item){
                    $dataArray[] = [
                        "vehiclename"           =>  "{$item->vehiclename}",
                        "vehicledisplayname"    =>  "{$item->vehicledisplayname}",
                    ];
                }

                echo json_encode( $dataArray );
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
                        "vehiclebrand"          =>  !empty($car->label) ? "{$car->label}" :  "{$car->vehiclebrand}",
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
