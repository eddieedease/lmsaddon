'use strict';

/**
 * @ngdoc service
 * @name dtsAdminApp.logger
 * @description
 * # logger
 * Service in the dtsAdminApp.
 */
angular.module('dtsAdminApp')
  .service('logger', function() {
    // keeping track of the session and logging and stuff
    this.super = false;
    this.nda = null;


    this.setSuper = function() {
      this.super = true;
    };


  });
