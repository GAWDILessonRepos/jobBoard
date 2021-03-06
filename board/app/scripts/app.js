'use strict';

/**
 * @ngdoc overview
 * @name boardApp
 * @description
 * # boardApp
 *
 * Main module of the application.
 */
angular
  .module('boardApp', [
    'ngRoute'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
