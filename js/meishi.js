var app=angular.module('meishi',['ng','ngRoute','ngAnimate']);
//配置路由
app.config(function($routeProvider){
    $routeProvider
        .when('/start',{
            templateUrl:'tpl/start.html'
        })
        .when('/main',{
            templateUrl:'tpl/main.html',
            controller:'mainCtrl'
        })
        .when('/detail/:id',{
            templateUrl:'tpl/detail.html',
            controller:'detailCtrl'
        })
        .when('/order/:id',{
            templateUrl:'tpl/order.html',
            controller:'orderCtrl'
        })
        .when('/myorder',{
            templateUrl:'tpl/myorder.html',
            controller:'myorderCtrl'
        })
        .when('/gengduo',{
            templateUrl:'tpl/gengduo.html',
            controller:'gengduoCtrl'
        })
        .otherwise({redirectTo:'/start'})
})
//获取路径参数，切换视图
app.controller('parentCtrl',['$scope','$location',function($scope,$location){
    $scope.jump=function(path){
        $location.path(path);
    }
}])
//创建控制器，并调用控制器
app.controller('mainCtrl',['$scope','$http',
    function($scope,$http){//ajax请求数据，更新到页面
        $http.get('data/tp_list.php').success(function(data){
            $scope.disList=data;
        })
        $scope.$watch('kw',function(){//监听页面数据
            //console.log($scope.kw);
            if($scope.kw){//模糊查询匹配数据
                $http.get('data/seach_kw.php?kw='+$scope.kw).success(function(data){
                    //console.log(data);
                    $scope.disList=data;
                })
            }
        })
}])
//请求更多数据，更新到视图
app.controller('gengduoCtrl',['$scope','$http',function($scope,$http){
    $http.get('data/gengduo.php').success(function(data){
        //console.log(data);
        $scope.tpList=data;
    })
}]);
app.controller('detailCtrl',['$scope','$routeParams','$http',function($scope,$routeParams,$http){
      //console.log($routeParams.id);
    //创建详情页控制器，把id传送过去
        $http.get('data/dish_byid.php?id='+$routeParams.id).success(function(data){
            //console.log(data);
            $scope.dish=data[0];
        })
}]);
//创建订单控制器，获得路径参数，请求数据
app.controller('orderCtrl', ['$scope', '$http', '$routeParams',
    function ($scope, $http, $routeParams) {
        $scope.order = {did: $routeParams.id};

        $scope.submitOrder = function () {
            //console.log($scope.order);
            var result = $.param($scope.order);
            console.log(result);
            $http
                .get('data/dish_add.php?' + result)
                .success(function (data) {
                    console.log(data);
                    var resultObj = data[0];
                    if (resultObj.msg == 'succ') {
                        sessionStorage.setItem('phone',
                            $scope.order.phone);
                        $scope.result = "下单成功，订单编号为:" + resultObj.oid;
                    }
                    else {
                        $scope.result = "下单失败";
                    }
                })
        }
    }
])
app.controller('myorderCtrl', ['$scope', '$http',
    function ($scope, $http) {

        var phone = sessionStorage.getItem('phone');
        //console.log(phone);

        $http
            .get('data/order_getbyphone.php?phone=' + phone)
            .success(function (data) {
                console.log(data);
                $scope.orderList = data;
            })

    }
])