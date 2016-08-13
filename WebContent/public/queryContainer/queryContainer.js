// the previous selected query type (#hashtag, @account, keyword, etc)
var prevQueryID = 0;

angular.module('queryContainer', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/queryContainer', {
		templateUrl: 'public/queryContainer/queryContainer.html',
		controller: 'queryContainer_Ctrl'
	});
}])

.controller('queryContainer_Ctrl', ['$scope', '$http', '$window', function($scope, $http, $window) {
	console.log("queryContainer controller...");
	
	// default value of queryPlaceholder
	$scope.queryPlaceholder = "Enter a #hashtag to track";
	
	// default value of chosen query item
	$scope.activeMenu = 0;
	
	$scope.showQueryItems = function(queryID) {
		if (queryID === 0) {
			// #hashtag
			$scope.queryPlaceholder = "Enter a #hashtag to track";
		} else if (queryID === 1) {
			// @account
			$scope.queryPlaceholder = "Enter an @account to analyze its activity";
		} else if (queryID === 2) {
			// keyword
			$scope.queryPlaceholder = "Enter a keyword to track";
		} else if (queryID === 3) {
			// @mention
			$scope.queryPlaceholder = "Enter a username to track its @mention";
		} else {
			// URL
			$scope.queryPlaceholder = "Enter a URL to track";
		}
		
		// the chosen query item (#hashtag, @account, keyword, etc)
		$scope.activeMenu = queryID;
	};
	
	// send data
	$scope.msg = "send";
	
	$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
   
    $scope.sendPost = function() {
		
		console.log("sending post...");
			
        $http({
            url : 'test',
            method : "POST",
            data : {
                'query' : $scope.query
            }
        }).then(function(response) {
        	console.log("this is the data");
            console.log(response.data);
            console.log("success posting data");
            
            //$scope.message = response.data;
            
            $window.localStorage.setItem("queryDetails", JSON.stringify(response.data));
            //$window.location = "http://localhost:8080/SaiTweet/test.jsp";
            $window.location = "#/test";
            
        }, function(response) {
            //fail case
            console.log(response);
            console.log("fail posting data");
            $scope.message = response;
        });
 
    };
	
}]);

