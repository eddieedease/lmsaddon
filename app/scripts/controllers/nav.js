'use strict';

/**
 * @ngdoc function
 * @name dtsAdminApp.controller:NavCtrl
 * @description
 * # NavCtrl
 * Controller of the dtsAdminApp
 */

//seperate module for the navbar, this depends on log info if
angular.module('dtsAdminApp')
  .controller('NavCtrl', function($scope, logger, $location) {
    if (logger.nda === null) {
      $location.path('/main');
    }

    //TODO TODO TODO turn of
    $scope.navv = false;
    //console.log($scope.logcheck);
    // NOTE this is kinda of a event listener
    $scope.$on("opennav", function(event, args) {
      $scope.navv = true;
      $scope.super = logger.super;
      $location.path("/about");
    });

    // TODO this one isn't used yet
    $scope.$on("closenav", function(event, args) {
      $scope.navv = false;
      $location.path("/main");
    });

    //TODO temporary solution = linked with "uitloggen"
    $scope.navvaway = function() {
      //console.log("en dan?");
      $scope.navv = false;
      $location.path("/main");
    }

  });
