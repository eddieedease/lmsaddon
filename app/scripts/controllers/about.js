'use strict';

/**
 * @ngdoc function
 * @name dtsAdminApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the dtsAdminApp
 */
angular.module('dtsAdminApp')
  .controller('AboutCtrl', function(logger, $location) {
    if (logger.nda === null) {
      $location.path('/main');
    }
    // Thinking 'bout all the beautiful things we could co here
  });
