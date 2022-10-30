"use strict";
boann.controller('cardealerController', ['$scope', '$http', '$window', '$state', function($scope, $http, $window, $state) {

    console.log($state.$current.url.pattern.split("/")[1] + " = case name");
    console.log($state.router.globals.$current.views.mainpage.controller + "Controller is Loaded");

    var URI     =   controler.view + "cardealer/index.php";
    var state   =   $state.$current.url.pattern.split("/")[1];

    switch(state){
        case "update-cars" :
            $http.get(URI, {params:{action:'getThisCar', name:$state.params.name}}).then(function(data){
                if(data.status === 200){
                    $scope.form = data.data
                }
            });

            $scope.submit   =   function(data){
                if(data){
                    var VALUES = [{data:true, data:data}];
                    $http.post(URI, VALUES, {params:{action:'updateCars'}}).then(function(data){
                        switch(data.data.data){
                            case "success" :
                                swal("Well done!!", data.data.dataContent, "success");
                                $state.go("dashboard");
                            break;

                            case "error" :
                                swal("Oeps!", data.data.dataContent, "error");
                            break;
                        }
                    });
                }
            }

            getDealers();
            getCatogory();
        break;

        case "import-cars" :
            $scope.submit   =   function(data){
                if(data){
                    var VALUES = [{data:true, data:data}];
                    $http.post(URI, VALUES, {params:{action:'insertCars'}}).then(function(data){
                        console.log(data.data)

                        switch(data.data.data){
                            case "success" :
                                swal("Well done!!", data.data.dataContent, "success");
                                $state.go("dashboard");
                            break;

                            case "error" :
                                swal("Oeps!", data.data.dataContent, "error");
                            break;
                        }

                    });
                }else{
                    swal("Oeps!", "Je hebt niets opgegeven!", "error");
                };
            }

            getDealers();
            getCatogory();
        break;
    }



    function getCatogory(){
        $http.get(URI, {params:{action:'catogory'}}).then(function(data){
            if(data.status === 200){
                $scope.catogorys = data.data
            }
        });
    }

    function getDealers(){
        $http.get(URI, {params:{action:'dealer'}}).then(function(data){
            if(data.status === 200){
                $scope.dealers = data.data
            }
        });
    }


}]);
