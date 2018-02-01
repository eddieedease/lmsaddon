'use strict';

/**
 * @ngdoc function
 * @name dtsAdminApp.controller:OndersteuningCtrl
 * @description
 * # OndersteuningCtrl
 * Controller of the dtsAdminApp
 */
angular.module('dtsAdminApp')
    .controller('OndersteuningCtrl', function(logger, dtsWebservice, md5, $scope, $http, $timeout, $location) {

        if (logger.nda === null) {
            $location.path('/main');
        }

        this.roles = [];

        this.skippps = [];

        var skipstempar = [];

        this.testtest = [];

        this.skipss = {
            roles: []
        };
        this.skipsnumberString;
        this.skipsnumberArray;


        this.ok = "ok";

        // Guess this has got to be Async with the http
        var self = this;

        this.newgroups = [];
        //this.groups = [];


        dtsWebservice.getService().then(function(dataResponse) {
            
            self.users = dataResponse.data[0];
            self.groups = dataResponse.data[1];
            self.courses = dataResponse.data[2];
            
            self.ryx();

        });

        this.ryx = function() {
            self.skipss = {
                roles: []
            };
            dtsWebservice.getxyr().then(function(dataResponse) {
                self.power = dataResponse.data[0];
                //self.users = dataResponse.data[0];
                self.skipsnumberString = dataResponse.data[1][0].skips;
                self.skipsnumberArray = self.skipsnumberString.split(",");


                // console.log(dataResponse);
                self.skippps = [];
                self.roles = [];
                self.createGroups();

                for (var i = 0; i < self.courses.length; i++) {
                    var cour = {
                        roleId: self.courses[i].id,
                        roleName: self.courses[i].name,
                        roleDescription: "Can do a bunch of stuff"
                    }
                    self.roles.push(cour);

                    for (var c = 0; c < self.skipsnumberArray.length; c++) {
                        if (self.skipsnumberArray[c] === self.courses[i].id) {
                            var sell = {
                                roleId: self.courses[i].id,
                                roleName: self.courses[i].name,
                                roleDescription: "Can do a bunch of stuff"
                            }

                            self.skippps.push(sell);
                            // TODO here needs it to be pushed into the array [object property]
                            //  self.skipss.roles.push(cour);

                        }
                    }
                }
                //console.log(self.roles);


                // TODO this one is needed, otherwise won't work. It must point to the original self.roles array
                self.skipss = {
                    roles: self.skippps
                };



                self.selectConfig = {
                    requiredMin: 0
                };


            });
        };




        // the magic going to happen to compare the two arrays and complete
        this.createGroups = function() {
            self.testtest = [];
            //self.groups = [];
            for (var i = 0; i < self.power.length; i++) {
                for (var a = 0; a < self.groups.length; a++) {
                    if (self.power[i].id === self.groups[a].id) {
                        self.groups[a].contact = self.power[i].naam;
                        self.groups[a].email = self.power[i].email;
                        self.groups[a].info = self.power[i].info;
                        self.groups[a].ww = self.power[i].ww;
                        self.testtest.push(self.power[i].ww);
                    }
                };
            };
        };

        // NOTE update RECORDS
        this.updateRec = function(ind, idd, bedrijff, contactt, emaill, infoo, www) {
            var wwww;
            var wwtemp = md5.createHash(www);
            if (www === this.testtest[ind]) {
                wwww = www;
            } else {
                wwww = md5.createHash(www);;
            }
            var upRec = $http({
                method: "post",
                ////TODO TODO TODO  switch onderstaande url: './api/chng.php' --  ' http://localhost:80/lmsaddon/app/api/chng.php ''
                url: "./api/chng.php",
                data: {
                    id: idd,
                    bedrijf: bedrijff,
                    contact: contactt,
                    email: emaill,
                    info: infoo,
                    ww: wwww
                },
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            });
            /* Check whether the HTTP Request is Successfull or not. */
            upRec.success(function(data) {
                // NOTE update the ryx
                dtsWebservice.getService().then(function(dataResponse) {
                    self.users = dataResponse.data[0];
                    self.groups = dataResponse.data[1];
                    self.courses = dataResponse.data[2];
                    self.ryx();
                });
            });
        }


        this.updateSkip = function(idd) {
            skipstempar = [];
            for (var i = 0; i < self.skipss.roles.length; i++) {

                skipstempar.push(self.skipss.roles[i].roleId);

            }
            var skippie = skipstempar.toString();
            var upSkip = $http({
                method: "post",
                ////TODO TODO TODO  switch onderstaande url: './api/adjuvis.php' --  ' http://localhost:80/lmsaddon/app/api/adjuvis.php ''
                url: "./api/adjuvis.php",
                data: {
                    id: idd,
                    skips: skippie
                },
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            });
            /* Check whether the HTTP Request is Successfull or not. */
            upSkip.success(function(data) {
                dtsWebservice.getService().then(function(dataResponse) {
                    self.users = dataResponse.data[0];
                    self.groups = dataResponse.data[1];
                    self.courses = dataResponse.data[2];
                    self.ryx();

                });
            });
        }
    });