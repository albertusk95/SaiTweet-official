angular.module('test', ['ngRoute'])
 
.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/test', {
        templateUrl: 'public/test/test.jsp',
        controller: 'test_Ctrl'
    });
}])
 
.controller('test_Ctrl', ['$scope', function($scope) {
    console.log("test controller");
    
    $scope.message = "test controller";
    
    // access local storage
	var quoted_query = localStorage.getItem("queryDetails");
	//document.getElementById("query").innerHTML = JSON.parse(quoted_query) + "END";
	$scope.query = JSON.parse(quoted_query) + "OK";
}]);