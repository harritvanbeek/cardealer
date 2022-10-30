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
        case "getThisCar" :
            $carname =  !empty($_GET["name"]) ? $_GET["name"] : null;
            $data    =  $cardealer->getThisCar($carname);

            $dataArray = [
                "id"                    => "{$data->id}",
                "vehiclename"           => "{$data->vehiclename}",
                "vehicledisplayname"    => "{$data->vehicledisplayname}",
                "vehiclebrand"          => "{$data->vehiclebrand}",
                "vehicleclass"          => "{$data->vehicleclass}",
                "stock"                 => "{$data->stock}",
                "price"                 => "{$data->price}",
                "assets"                => "{$data->assets}",
                "type"                  => "{$data->type}",
            ];
            echo json_encode($dataArray);
        break;

        case "updateCars" :
            if($input->exist()){
                $id                     =   !empty($input->get("data")["id"])                   ? $input->get("data")["id"]                 : null;
                $vehiclename            =   !empty($input->get("data")["vehiclename"])          ? $input->get("data")["vehiclename"]        : null;
                $vehicledisplayname     =   !empty($input->get("data")["vehicledisplayname"])   ? $input->get("data")["vehicledisplayname"] : null;
                $vehiclebrand           =   !empty($input->get("data")["vehiclebrand"])         ? $input->get("data")["vehiclebrand"]       : null;
                $vehicleclass           =   !empty($input->get("data")["vehicleclass"])         ? $input->get("data")["vehicleclass"]       : null;
                $stock                  =   !empty($input->get("data")["stock"])                ? $input->get("data")["stock"]              : null;
                $price                  =   !empty($input->get("data")["price"])                ? $input->get("data")["price"]              : null;
                $assets                 =   !empty($input->get("data")["assets"])               ? $input->get("data")["assets"]             : null;
                $type                   =   !empty($input->get("data")["type"])                 ? $input->get("data")["type"]               : null;

                //errors
                if(empty($vehiclename))                             { $error = ["Spawn naam is een verplichte veld"]; }
                elseif(empty($vehicledisplayname))                  { $error = ["Display naam is een verplichte veld"]; }
                elseif(empty($vehiclebrand))                        { $error = ["Merk is een verplichte veld"]; }
                elseif(empty($vehicleclass))                        { $error = ["Catogory is een verplichte veld"]; }
                elseif(empty($stock))                               { $error = ["Voorraad is een verplichte veld"]; }
                elseif(empty($price))                               { $error = ["Voorraad is een verplichte veld"]; }
                elseif(empty($type))                                { $error = ["Dealer is een verplichte veld"]; }

                if($input->exist() > 0 and empty($error) === true){
                    $postArray  = [
                        "id"                  =>  (int) "{$id}",
                        "vehiclename"         =>  "{$vehiclename}",
                        "vehicledisplayname"  =>  "{$vehicledisplayname}",
                        "vehiclebrand"        =>  "{$vehiclebrand}",
                        "vehicleclass"        =>  "{$vehicleclass}",
                        "stock"               =>  "{$stock}",
                        "price"               =>  "{$price}",
                        "assets"              =>  "{$assets}",
                        "types"               =>  "{$type}",
                    ];
                    if( $cardealer->updateCar($postArray) > 0 ){
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
                }

            }
        break;

        case "insertCars" :
            if($input->exist()){
                $vehiclename            =   !empty($input->get("data")["vehiclename"])          ? $input->get("data")["vehiclename"]        : null;
                $vehicledisplayname     =   !empty($input->get("data")["vehicledisplayname"])   ? $input->get("data")["vehicledisplayname"] : null;
                $vehiclebrand           =   !empty($input->get("data")["vehiclebrand"])         ? $input->get("data")["vehiclebrand"]       : null;
                $vehicleclass           =   !empty($input->get("data")["vehicleclass"])         ? $input->get("data")["vehicleclass"]       : null;
                $stock                  =   !empty($input->get("data")["stock"])                ? $input->get("data")["stock"]              : null;
                $price                  =   !empty($input->get("data")["price"])                ? $input->get("data")["price"]              : null;
                $assets                 =   !empty($input->get("data")["assets"])               ? $input->get("data")["assets"]             : null;
                $type                   =   !empty($input->get("data")["type"])                 ? $input->get("data")["type"]               : null;

                //errors
                if(empty($vehiclename))                             { $error = ["Spawn naam is een verplichte veld"]; }
                elseif($cardealer->vehicleExist($vehiclename) > 0)  { $error = ["Voertuig bestaat al!"]; }
                elseif(empty($vehicledisplayname))                  { $error = ["Display naam is een verplichte veld"]; }
                elseif(empty($vehiclebrand))                        { $error = ["Merk is een verplichte veld"]; }
                elseif(empty($vehicleclass))                        { $error = ["Catogory is een verplichte veld"]; }
                elseif(empty($stock))                               { $error = ["Voorraad is een verplichte veld"]; }
                elseif(empty($price))                               { $error = ["Voorraad is een verplichte veld"]; }
                elseif(empty($type))                                { $error = ["Dealer is een verplichte veld"]; }

                if($input->exist() > 0 and empty($error) === true){

                    $postArray  = [
                        "vehiclename"         =>  "{$vehiclename}",
                        "vehicledisplayname"  =>  "{$vehicledisplayname}",
                        "vehiclebrand"        =>  "{$vehiclebrand}",
                        "vehicleclass"        =>  "{$vehicleclass}",
                        "stock"               =>  "{$stock}",
                        "price"               =>  "{$price}",
                        "assets"              =>  "{$assets}",
                        "types"               =>  "{$type}",
                    ];

                    if($cardealer->insert($postArray) > 0){
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

        case "catogory" :
            $catogorys = $cardealer->getCatogory();
            if($catogorys){
                foreach($catogorys as $catogory){
                    $dataArray[]    =   [
                        "name"   =>  "{$catogory->name}",
                        "label"  =>  "{$catogory->label}",
                    ];
                }
                echo json_encode($dataArray);
            }
        break;

        case "dealer" :
            $dealers = $cardealer->getDealers();
            if($dealers){
                foreach($dealers as $dealer){
                    $dataArray[]    =   [
                        "name"   =>  "{$dealer->name}",
                        "label"  =>  "{$dealer->label}",
                    ];
                }
                echo json_encode($dataArray);
            }
        break;

    }
