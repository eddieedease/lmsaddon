'use strict';

/**
 * @ngdoc service
 * @name dtsAdminApp.dtsWebservice
 * @description
 * # dtsWebservice
 * Service in the dtsAdminApp.
 */
angular.module('dtsAdminApp')
  .service('dtsWebservice', function($timeout, $http) {
    ////
    // webservice API connection
    // NOTE 6 pieces ==> [0] Users [1] Groups [2] Courses [3] Courses_to_groups [4] Users_to_courses [5] users_to_groups
    //
    //http://localhost:8888/lmsaddon/app/api/api2.php
    this.getService = function() {
      // $http() returns a $promise that we can add handlers with .then()
      return $http({
        method: 'GET',
        //TODO TODO TODO  switch onderstaande url: './api/api2.php' --  ' http://localhost:80/dtsadminaddon/app/api/api2.php ''
        url: './api/api2.php',
        params: {
          woobar: new Date().getTime()
        },
        cache: false
      }).success(function(data, status, headers, config) {
        console.log('from GET service');
        console.log(data);
      });
    };

    this.getxyr = function() {
      // $http() returns a $promise that we can add handlers with .then()
      return $http({
        method: 'GET',
        //TODO TODO TODO  switch onderstaande url: './api/ipa.php' --  'http://localhost:8888/dtsdts/app/api/ipa.php''
        url: './api/ipa.php',
        params: {
          woobar: new Date().getTime()
        },
        cache: false
      }).success(function(data, status, headers, config) {
        console.log('from GETXYR service');
        console.log(data);
      });
    };
  });
