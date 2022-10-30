boann.config(['$stateProvider', '$urlMatcherFactoryProvider', '$urlRouterProvider', '$locationProvider',
    function($stateProvider, $urlMatcherFactoryProvider, $urlRouterProvider, $locationProvider){
        $urlRouterProvider.otherwise("/dashboard/");
        $urlMatcherFactoryProvider.caseInsensitive(true);

        $stateProvider
            .state({
                name:"dashboard",
                url: "/dashboard/",
                views : {
                    "navbar" : {
                        templateUrl : "./html/navbar.html?v="+controler.version,
                        controller: "NavbarController",
                    },

                    "sidebar" : {
                        templateUrl : "./html/sidebar.html?v="+controler.version,
                        //controller: "SidebarController",
                    },

                    "mainpage" : {
                        templateUrl : "./html/cardealer/dashboard.html?v="+controler.version,
                        controller  : "dashboardController",
                    },
                }
            })

            .state({
                name:"importCar",
                url: "/import-cars/",
                views : {
                    "navbar" : {
                        templateUrl : "./html/navbar.html?v="+controler.version,
                        controller: "NavbarController",
                    },

                    "sidebar" : {
                        templateUrl : "./html/sidebar.html?v="+controler.version,
                        //controller: "SidebarController",
                    },

                    "mainpage" : {
                        templateUrl : "./html/cardealer/importcar.html?v="+controler.version,
                        controller  : "cardealerController",
                    },
                }
            })

            .state({
                name:"updateCar",
                url: "/update-cars/:name",
                views : {
                    "navbar" : {
                        templateUrl : "./html/navbar.html?v="+controler.version,
                        controller: "NavbarController",
                    },

                    "sidebar" : {
                        templateUrl : "./html/sidebar.html?v="+controler.version,
                        //controller: "SidebarController",
                    },

                    "mainpage" : {
                        templateUrl : "./html/cardealer/importcar.html?v="+controler.version,
                        controller  : "cardealerController",
                    },
                }
            })

            .state({
                name:"exportCar",
                url: "/export-cars/",
                views : {
                    "navbar" : {
                        templateUrl : "./html/navbar.html?v="+controler.version,
                        controller: "NavbarController",
                    },

                    "sidebar" : {
                        templateUrl : "./html/sidebar.html?v="+controler.version,
                        //controller: "SidebarController",
                    },

                    "mainpage" : {
                        templateUrl : "./html/cardealer/exportcar.html?v="+controler.version,
                        controller  : "dashboardController",
                    },
                }
            })



    }]);
