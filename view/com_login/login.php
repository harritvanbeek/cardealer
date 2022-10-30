<!DOCTYPE html>
<html>
<head>
    <meta name="fragment" content="!">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>BOANN starcitzen login</title>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="<?php echo THEMES; ?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo THEMES; ?>/css/mdb.min.css" rel="stylesheet">
    <link href="<?php echo THEMES; ?>/css/boann.min.css?v=<?php echo $_SERVER['REQUEST_TIME']; ?>" rel="stylesheet">
</head>
<body ng-app="BoannApp">
    <div class="application">
        <div class="background_container">
            <div class="fullpage_container">
                <div class="background_assets"></div>
            </div>
        </div>

        <div class="login_page">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-5">
                        <div class="card dark_card">
                            <div class="card-body">
                                <div class="logo">
                                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                         viewBox="0 0 260 67" style="enable-background:new 0 0 236 67;" xml:space="preserve">
                                        <g id="Layer_2">
                                            <g id="boann_x5F_logo_x5F_icone_1_">
                                                <polygon style="fill:#FFFFFF;" points="48.239,6.641 9.91,26.181 42.113,20.978 49.649,27.395 57.672,6.641"/>
                                                <polygon style="fill:#FFFFFF;" points="27.475,26.528 4.922,29.649 7.85,37.512 46.992,60.867 24.276,37.107"/>
                                                <polygon style="fill:#FFFFFF;" points="47.656,42.585 57.618,12.646 57.564,55.78 53.281,62.891 37.342,45.258"/>
                                                <polygon style="fill:#FFFFFF;" points="35.011,43.062 45.149,40.518 47.805,30.517 41.164,24.273 31.207,26.007 27.855,35.893"/>
                                            </g>
                                            <g>
                                                <path style="fill:#FFFFFF;" d="M81.127,17.262v34.434H69.998h-0.65c-0.6,0-1.063-0.113-1.388-0.34s-0.487-0.551-0.487-0.972
                                                    c0-0.689,0.333-1.143,1-1.362c0.55-0.185,0.871-0.298,0.963-0.341c0.092-0.042,0.188-0.139,0.288-0.29
                                                    c0.199-0.269,0.3-0.698,0.3-1.287V21.853c0-0.588-0.101-1.017-0.3-1.286c-0.101-0.151-0.196-0.248-0.288-0.291
                                                    c-0.092-0.042-0.413-0.155-0.963-0.34c-0.667-0.218-1-0.672-1-1.362c0-0.42,0.162-0.744,0.487-0.971s0.788-0.34,1.388-0.34h0.65
                                                    H81.127z M88.905,33.861c1.5,0.303,2.654,0.597,3.463,0.883c0.809,0.286,1.538,0.647,2.188,1.084
                                                    c1.116,0.724,1.971,1.678,2.563,2.863c0.591,1.186,0.888,2.51,0.888,3.973c0,2.876-1.051,5.121-3.151,6.736
                                                    c-1.084,0.841-2.28,1.434-3.589,1.778s-3.021,0.517-5.139,0.517h-2.976v-2.649c0.666-0.05,1.191-0.147,1.575-0.29
                                                    c0.384-0.143,0.726-0.382,1.025-0.719c0.55-0.622,0.825-1.589,0.825-2.901v-5.726c0-0.841-0.071-1.497-0.213-1.968
                                                    s-0.404-0.899-0.787-1.287c-0.284-0.303-0.592-0.521-0.926-0.656c-0.333-0.135-0.809-0.244-1.425-0.328v-2.624
                                                    c0.616-0.05,1.096-0.134,1.438-0.252c0.342-0.117,0.654-0.311,0.938-0.58c0.267-0.252,0.492-0.58,0.676-0.984
                                                    c0.183-0.403,0.283-0.773,0.3-1.11v-1.388v-4.364c0-0.454-0.075-0.929-0.225-1.425c-0.15-0.496-0.334-0.887-0.551-1.173
                                                    c-0.316-0.387-0.671-0.672-1.063-0.857s-0.922-0.311-1.588-0.378v-2.775h2.876c3.801,0,6.701,0.791,8.702,2.371
                                                    c0.917,0.723,1.617,1.598,2.101,2.624c0.483,1.026,0.726,2.136,0.726,3.33c0,1.177-0.246,2.287-0.738,3.33
                                                    c-0.491,1.043-1.18,1.909-2.063,2.599c-0.65,0.538-1.4,0.976-2.251,1.312C91.655,33.163,90.454,33.507,88.905,33.861z"/>
                                                <path style="fill:#FFFFFF;" d="M114.911,19.305c-0.85,0.303-1.45,0.715-1.8,1.236c-0.351,0.521-0.525,1.287-0.525,2.295v22.553
                                                    c0,1.48,0.2,2.522,0.6,3.128c0.317,0.505,0.893,0.867,1.726,1.085v2.775c-3.701-0.303-6.802-1.707-9.303-4.213
                                                    c-3.251-3.263-4.876-7.812-4.876-13.647c0-2.926,0.429-5.571,1.288-7.934c0.858-2.362,2.129-4.368,3.813-6.016
                                                    c1.283-1.262,2.667-2.22,4.151-2.876c1.483-0.656,3.126-1.026,4.926-1.11V19.305z M116.962,19.305v-2.724
                                                    c1.801,0.084,3.447,0.454,4.939,1.11c1.491,0.656,2.88,1.614,4.163,2.876c3.401,3.347,5.102,7.997,5.102,13.95
                                                    c0,5.836-1.625,10.385-4.876,13.647c-2.501,2.522-5.61,3.927-9.328,4.213v-2.775c0.434-0.101,0.771-0.231,1.013-0.391
                                                    c0.242-0.16,0.463-0.391,0.663-0.694c0.45-0.689,0.675-1.732,0.675-3.128V22.837c0-0.891-0.149-1.597-0.45-2.119
                                                    c-0.199-0.354-0.438-0.631-0.712-0.833C117.875,19.683,117.479,19.49,116.962,19.305z"/>
                                                <path style="fill:#FFFFFF;" d="M142.545,23.669l1.275,5.222l-4.427,16.296c-0.134,0.471-0.2,0.908-0.2,1.312
                                                    c0,1.06,0.491,1.816,1.476,2.271l0.875,0.404c0.551,0.252,0.825,0.673,0.825,1.261c0,0.841-0.608,1.261-1.825,1.261h-6.352
                                                    c-0.617,0-1.105-0.13-1.463-0.391c-0.359-0.26-0.538-0.618-0.538-1.072c0-0.487,0.366-0.891,1.101-1.21
                                                    c0.684-0.303,1.188-0.576,1.513-0.82s0.638-0.576,0.938-0.997c0.467-0.689,0.851-1.606,1.15-2.75L142.545,23.669z M144.27,17.262
                                                    h10.078l6.952,29.641c0.134,0.521,0.283,0.984,0.45,1.387c0.15,0.32,0.483,0.581,1,0.782c0.434,0.185,0.734,0.37,0.9,0.555
                                                    c0.167,0.185,0.25,0.438,0.25,0.756c0,0.875-0.649,1.312-1.95,1.312h-12.479c-0.5,0-0.9-0.122-1.2-0.366
                                                    c-0.301-0.244-0.45-0.568-0.45-0.971c0-0.336,0.066-0.588,0.2-0.757c0.133-0.168,0.433-0.378,0.899-0.631
                                                    c0.334-0.168,0.567-0.353,0.7-0.555c0.134-0.202,0.2-0.454,0.2-0.757c0-0.286-0.024-0.538-0.074-0.757l-0.801-3.658h-6.977
                                                    l0.675-3.002h5.602l-4.602-20.509L144.27,17.262z"/>
                                                <path style="fill:#FFFFFF;" d="M169.628,26.116l2.651,4.44v13.521c0,1.178,0.195,2.145,0.587,2.901s1.013,1.379,1.863,1.867
                                                    l0.75,0.429c0.434,0.252,0.65,0.631,0.65,1.135c0,0.387-0.158,0.707-0.475,0.958c-0.268,0.219-0.817,0.328-1.651,0.328h-5.776
                                                    c-1.518,0-2.275-0.437-2.275-1.312c0-0.302,0.079-0.542,0.237-0.719s0.504-0.416,1.038-0.719c1.601-0.892,2.4-2.514,2.4-4.869
                                                    V26.116z M180.107,17.262l13.304,23.309v11.125h-6.827l-16.979-29.515c-0.367-0.639-0.667-1.084-0.9-1.337
                                                    c-0.234-0.252-0.534-0.437-0.9-0.555l-0.95-0.353c-0.25-0.084-0.45-0.235-0.601-0.454c-0.15-0.218-0.225-0.462-0.225-0.731
                                                    c0-0.286,0.074-0.551,0.225-0.795c0.15-0.244,0.351-0.416,0.601-0.517c0.283-0.117,1.05-0.176,2.301-0.176H180.107z
                                                     M193.411,36.535l-2.65-4.516v-6.988c0-1.413-0.205-2.493-0.613-3.242c-0.408-0.748-1.13-1.391-2.163-1.93
                                                    c-0.35-0.168-0.592-0.349-0.726-0.542c-0.133-0.193-0.199-0.441-0.199-0.744c0-0.454,0.146-0.786,0.438-0.997
                                                    c0.291-0.21,0.763-0.315,1.413-0.315h6.251c0.851,0,1.409,0.135,1.676,0.403c0.283,0.27,0.426,0.589,0.426,0.958
                                                    c0,0.354-0.08,0.618-0.238,0.795s-0.537,0.416-1.138,0.719c-0.884,0.454-1.551,1.152-2,2.094c-0.317,0.69-0.476,1.624-0.476,2.8
                                                    V36.535z"/>
                                                <path style="fill:#FFFFFF;" d="M204.013,26.116l2.651,4.44v13.521c0,1.178,0.195,2.145,0.587,2.901s1.013,1.379,1.863,1.867
                                                    l0.75,0.429c0.434,0.252,0.65,0.631,0.65,1.135c0,0.387-0.158,0.707-0.475,0.958c-0.268,0.219-0.817,0.328-1.651,0.328h-5.776
                                                    c-1.518,0-2.275-0.437-2.275-1.312c0-0.302,0.079-0.542,0.237-0.719s0.504-0.416,1.038-0.719c1.601-0.892,2.4-2.514,2.4-4.869
                                                    V26.116z M214.492,17.262l13.304,23.309v11.125h-6.827l-16.979-29.515c-0.367-0.639-0.667-1.084-0.9-1.337
                                                    c-0.234-0.252-0.534-0.437-0.9-0.555l-0.95-0.353c-0.25-0.084-0.45-0.235-0.601-0.454c-0.15-0.218-0.225-0.462-0.225-0.731
                                                    c0-0.286,0.074-0.551,0.225-0.795c0.15-0.244,0.351-0.416,0.601-0.517c0.283-0.117,1.05-0.176,2.301-0.176H214.492z
                                                     M227.795,36.535l-2.65-4.516v-6.988c0-1.413-0.205-2.493-0.613-3.242c-0.408-0.748-1.13-1.391-2.163-1.93
                                                    c-0.35-0.168-0.592-0.349-0.726-0.542c-0.133-0.193-0.199-0.441-0.199-0.744c0-0.454,0.146-0.786,0.438-0.997
                                                    c0.291-0.21,0.763-0.315,1.413-0.315h6.251c0.851,0,1.409,0.135,1.676,0.403c0.283,0.27,0.426,0.589,0.426,0.958
                                                    c0,0.354-0.08,0.618-0.238,0.795s-0.537,0.416-1.138,0.719c-0.884,0.454-1.551,1.152-2,2.094c-0.317,0.69-0.476,1.624-0.476,2.8
                                                    V36.535z"/>
                                            </g>
                                        </g>
                                    </svg>
                                </div>

                                <!-- <div ui-view="loginPage"></div> -->

                                <form ng-controller="LoginController">
                                    <div class="form-group boann_input">
                                        <label>Username  :</label>
                                        <input class="form-control input_boann" ng-model="form.username" type="text" name="name">
                                    </div>

                                    <div class="form-group boann_input">
                                        <label>Wachtwoord :</label>
                                        <input class="form-control input_boann" ng-model="form.password" type="password" name="password">
                                    </div>

                                    <!-- <div class="form-check mb-2 mr-sm-2">
                                        <input class="form-check-input" ng-model="form.remeber" type="checkbox" id="inlineFormCheckMD">
                                        <label class="form-check-label" for="inlineFormCheckMD">
                                        Onthouden
                                    </label>
                                    </div>-->

                                    <hr>
                                    <div class="form-group text-center">
                                        <button ng-click="submit(form)" class="btn btn-sm btn-primary">Inloggen</button>
                                        <!-- <a ui-sref="wachtwoord_vergeten" class="btn btn-sm btn-primary">Wachtwoord vergeten</a> -->
                                    </div>

                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



        <script src="<?php echo THEMES; ?>/js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/popper.min.js"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/mdb.min.js"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/angular.min.js"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/angular-sanitize.min.js"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/angular-sanitize.min.js"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/angular-ui-router.js"></script>



        <script type="text/javascript" src="<?php echo THEMES; ?>/js/sweetalert.min.js?v=<?php echo $_SERVER["REQUEST_TIME"]; ?>"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/login.min.js?v=<?php echo $_SERVER["REQUEST_TIME"]; ?>"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/boann_login.min.js?v=<?php echo $_SERVER["REQUEST_TIME"]; ?>"></script>
        <script type="text/javascript" src="<?php echo THEMES; ?>/js/boann.controller.min.js?v=<?php echo $_SERVER["REQUEST_TIME"]; ?>"></script>
</body>
</html>
