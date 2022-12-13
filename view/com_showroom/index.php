<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="fragment" content="!">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cardealer Showroom</title>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <link href="<?php echo THEMES; ?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo THEMES; ?>/css/mdb.min.css" rel="stylesheet">
</head>

<body ng-app="BoannApp">
        <div class="container" ng-controller="showroomController">

            <div class="row">
                <div class="col-md-6 p-4">
                    <input class="form-control" placeholder="Zoeken.." ng-model="search">
                </div>

                <div class="col-md-6 p-4">
                    <!-- <select class="browser-default custom-select" ng-model="brand">
                        <option>test</option>                        
                    </select> -->
                </div>
            </div>


            <div class="row">
                <div class="col-md-4 p-4" ng-repeat="car in cars | filter:search">
                    <div class="card">
                        <img ng-if="car.assets" src="{{car.assets}}" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">
                                <span ng-bind-html="car.brand"></span>
                                <span ng-bind-html="car.name"></span>
                            </h5>

                            <ul>
                                <li>Aantal : <span ng-bind-html="car.stock"></span></li>
                                <li>Prijs : <span ng-bind-html="car.price | currency : '€' "></span></li>
                                <li>Merk : <span ng-bind-html="car.brand"></span></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    <script type="text/javascript" src="<?php echo THEMES; ?>/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/jquery-ui-1.12.1/external/jquery/jquery.js"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/jquery-ui-1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/popper.min.js"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/mdb.min.js"></script>

    <script type="text/javascript" src="<?php echo THEMES; ?>/js/angular.min.js"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/angular-sanitize.min.js"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/angular-ui-router.js"></script>

    <script type="text/javascript" src="<?php echo THEMES; ?>/js/login.min.js?v=<?php echo $_SERVER["REQUEST_TIME"]; ?>"></script>
    <script type="text/javascript" src="<?php echo THEMES; ?>/js/boann.min.js?v=<?php echo $_SERVER["REQUEST_TIME"]; ?>"></script>
</body>
