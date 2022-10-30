"use strict";
boann.controller('NavbarController', ['$scope', '$http', '$window', '$state', function($scope, $http, $window, $state) {

    //console.log($state.$current.url.pattern.split("/")[1] + " = case name");
    //console.log($state.router.globals.$current.views.mainpage.controller + "Controller is Loaded");

    $scope.sbar = "show";
    var URI     =   controler.view + "settings/index.php";
    console.log(URI);

    $scope.home     = function(){
        $state.go("dashboard");
    }

    $scope.sidebar  = function(data){
        switch(data){
            case "show" :
                $scope.sbar = "hide";
                $(".serversidebar_sidebarcontent").fadeOut();
                $(".Page-page").css({ "margin-left" : "0px"});
            break;

            case "hide" :
                $scope.sbar = "show";
                $(".serversidebar_sidebarcontent").fadeIn();
                $(".Page-page").css({ "margin-left" : "240px"});
            break;
        }
    }

    $scope.history  = function(){
        history.back();
    }

    $http.get(URI, {params:{action:'getMe'}}).then(function(data){
        $scope.me = data.data
    });




}]);
