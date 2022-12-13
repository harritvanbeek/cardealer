<?php
    define('_BOANN', 1);
    require_once dirname(dirname(dirname(__file__))).'/libraries/import.php';

    $action     =   !empty($_GET["action"]) ? $_GET["action"] : null;
    $showroom   =   NEW \classes\view\showroomView;

    switch($action){
        case "getCars" :

            foreach($showroom->getCars() as $cars){
                $items[]    =   [
                    "name"   =>  "{$cars->vehicledisplayname}",
                    "stock"  =>  "{$cars->stock}",
                    "price"  =>  "{$cars->price}",
                    "assets" =>  !empty("{$cars->assets}") ? "{$cars->assets}" : "./assets/no-image-available.png",
                    "brand"  =>  "{$cars->label}",
                ];
            }
            echo json_encode($items);            
        break;
    }
