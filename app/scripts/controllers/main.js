'use strict';

/**
 * @ngdoc function
 * @name dtsAdminApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the dtsAdminApp
 */
angular.module('dtsAdminApp')
  .controller('MainCtrl', function(logger, dtsWebservice, md5, $scope, $location, $http, $timeout) {


    this.gebruiker = "";
    this.wachtwoord = "";
    var self = this;

    // NOTE this is the inlog module

    dtsWebservice.getxyr().then(function(dataResponse) {
      self.owow = dataResponse.data[1][0].ww;
      //self.users = dataResponse.data[0];
      self.qbrr = dataResponse.data[0];
    });


    //TODO TODO TODO Now only superadmin MAKE for users login
    // NOTE This must be a post to php to check and verify server side, over here is like very bad
    this.loginnow = function() {
      if (this.gebruiker === "Admin" && md5.createHash(this.wachtwoord) === this.owow) {
        this.fout = false;
        logger.nda = "su";
        //logger.login();
        logger.setSuper();
        $scope.$root.$broadcast("opennav", {
          value: true
        });
      };
      for (var i = 0; i < self.qbrr.length; i++) {
        if (this.gebruiker === self.qbrr[i].naam && md5.createHash(this.wachtwoord) === self.qbrr[i].ww) {
          logger.super = false;
          logger.nda = self.qbrr[i].id;
          $scope.$root.$broadcast("opennav", {
            value: true
          });
        }
      };


      if (logger.nda === null) {
        self.fout = true;
      }
    };

    this.wegfout = function() {
      self.fout = false;
    };



  });
