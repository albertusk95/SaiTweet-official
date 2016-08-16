angular.module('primary', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/primary', {
		templateUrl: 'public/primary/primary.jsp',
		controller: 'primaryCtrl'
	});
}])

.controller('primaryCtrl', ['$scope', function($scope) {
	console.log("primary controller...");
	
	// default to Dashboard
	$scope.selectedView = 0;
	
	$scope.setView = function(item) {
		$scope.selectedView = item;
	}
}]);

