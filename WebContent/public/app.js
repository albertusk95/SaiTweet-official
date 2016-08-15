// pre home
var app = angular.module('saitweet', [
    'ngRoute',
    'queryContainer',
	'whatisit',
	'contact'
])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.otherwise({
        redirectTo: '/queryContainer'
    });
}]);

//main home
var primary = angular.module('mainhome', [
	'ngRoute',
	'preview'
])

.config(['$routeProvider', function($routeProvider) {
	$routeProvider.otherwise({
		redirectTo: '/preview'
	});
}]);

