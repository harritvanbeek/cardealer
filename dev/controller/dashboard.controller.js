"use strict";
boann.controller('dashboardController', ['$scope', '$http', '$window', '$state', function($scope, $http, $window, $state) {

    console.log($state.$current.url.pattern.split("/")[1] + " = case name");
    console.log($state.router.globals.$current.views.mainpage.controller + "Controller is Loaded");

    var URI     =   controler.view + "dashboard/index.php";
    var state   =   $state.$current.url.pattern.split("/")[1];

    switch(state){
        case "export-cars" :
            getAllCars();
        break;
        case "dashboard" :
            getAllCars();

            $scope.remove   =   function(data){
                swal({
                    title: "You Sure to delete",
                    text: "",
                    buttons: true,
                    closeOnClickOutside: false,
                    closeOnEsc: false,
                    icon: "info",
                }).then(function(input){
                    if(input){
                        var VALUES  =   [{data:true, data:data}];
                        $http.post(URI, VALUES, {params:{action:"removecar"}}).then(function(data){
                            switch(data.data.data){
                                case "success" :
                                    swal("Well done!!", data.data.dataContent, "success");
                                    getAllCars();
                                break;

                                case "error" :
                                    swal("Oeps!", data.data.dataContent, "error");
                                    getAllCars();
                                break;
                            }
                        });

                    }
                });
            }
        break;
    }


    function getAllCars(){
        $http.get(URI, {params:{action:"getAllCars"}}).then(function(data){
            if(data.status === 200){
                $scope.cars = data.data;
            };
        });
    }


}]);
