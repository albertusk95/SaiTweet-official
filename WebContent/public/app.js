var app = angular.module('saitweet', [
    'ngRoute',
    'queryContainer',
	'whatisit',
	'contact',
	'test'
])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.otherwise({
        redirectTo: '/queryContainer'
    });
}]);