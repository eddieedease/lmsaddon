'use strict';

/**
 * @ngdoc function
 * @name dtsAdminApp.controller:RapportenCtrl
 * @description
 * # RapportenCtrl
 * Controller of the dtsAdminApp
 */
angular.module('dtsAdminApp')
    .controller('RapportenCtrl', function(logger, dtsWebservice, $http, $location, $timeout) {

        if (logger.nda === null) {
            $location.path('/main');
        }

        var self = this;
        // set variables
        this.currentCourse = null;
        this.nameCurrentCourse = null;

        self.groups = [];

        self.rapporten = [];

        self.rapcopy = [];

        self.currentName = "";


        //NOTE NOTE NOTE
        // TODO TODO TODO OK HIER KLOPT NOG HELEMAAL NIKS VAN ,, FIXEN! TODO TODO TODO
        //calling the service and do the math (also, inflict on 'self' (===this))






        dtsWebservice.getxyr().then(function(dataResponse) {
            self.power = dataResponse.data[0];
            //self.users = dataResponse.data[0];
            self.skipsnumberString = dataResponse.data[1][0].skips;
            self.skipsnumberArray = self.skipsnumberString.split(",");
            self.sertjp = dataResponse.data[0];
            // console.log(self.serpwr);

            dtsWebservice.getService().then(function(dataResponse) {
                self.getusers = [];
                self.users = dataResponse.data[0];
                self.groupssss = dataResponse.data[1];
                self.courses = dataResponse.data[2];
                self.coursess = [];
                self.coursesnow = [];

                // TODO construct the relevant courses

                for (var i = 0; i < dataResponse.data[3].length; i++) {
                    if (logger.nda === "su" && self.coursesnow.indexOf(dataResponse.data[3][i].courses_ID) === -1) {
                        self.coursesnow.push(dataResponse.data[3][i].courses_ID);
                    }
                    //dataResponse.data[2][i];
                    else if (dataResponse.data[3][i].groups_ID === logger.nda && self.coursesnow.indexOf(dataResponse.data[3][i].courses_ID) === -1) {
                        self.coursesnow.push(dataResponse.data[3][i].courses_ID);
                    }
                }
                for (var z = 0; z < self.courses.length; z++) {
                    for (var q = 0; q < self.coursesnow.length; q++) {
                        if (self.coursesnow[q] === self.courses[z].id) {
                            //console.log(self.courses[z]);
                            for (var op = 0; op < self.skipsnumberArray.length; op++) {
                                if (self.courses[z].id === self.skipsnumberArray[op]) {
                                    self.coursess.push(self.courses[z]);
                                }
                            }

                        }
                    }
                }
                self.userscores = dataResponse.data[4];
                self.usergroups = dataResponse.data[5];
                self.selectedCourse = null;
            });
        });









        // TODO this functions does the math for scorlisting
        this.setCourse = function(courseID) {

            self.selectedCourse = courseID;
            self.rapporten = [];
            self.getusers = [];

            for (var p = 0; p < self.courses.length; p++) {
                if (self.courses[p].id === courseID) {
                    self.nameCurrentCourse = self.courses[p].name;
                }
            }


            for (var i = 0; i < self.usergroups.length; i++) {
                if (logger.nda === "su") {
                    self.getusers.push(self.usergroups[i].users_LOGIN);
                }
                if (self.usergroups[i].groups_ID === logger.nda) {
                    self.getusers.push(self.usergroups[i].users_LOGIN);
                };
            };


            for (var b = 0; b < self.userscores.length; b++) {
                if (self.getusers.indexOf(self.userscores[b].users_LOGIN) != -1 && courseID === self.userscores[b].courses_ID) {
                    // making the right patches
                    for (var n = 0; n < self.users.length; n++) {
                        if (self.users[n].login === self.userscores[b].users_LOGIN) {

                            var realname = self.users[n].name + " " + self.users[n].surname;
                            // GEt date last inlog
                            var datecatch = '' + self.users[n].last_login + '000';
                            var catch2 = parseInt(datecatch);
                            var datetimer = new Date(catch2);
                            var lasttime = this.prettyDate(datetimer);
                            // Get date registrator participant
                            var datecatch2 = '' + self.users[n].timestamp + '000';
                            var catch22 = parseInt(datecatch2);
                            var datetimer2 = new Date(catch22);
                            var lasttime2 = this.prettyDate(datetimer2);
                        }
                    };

                    // TODO loop through --> FIND ID & Retrieve InlogKey
                    for (var k = 0; k < self.groupssss.length; k++) {
                        if (self.groupssss[k].id === self.userscores[b].courses_ID);
                        console.log("CourseID = " + self.userscores[b].courses_ID);
                        console.log("GROUPID = " +self.groupssss[k].id);
                        console.log("KEYKEY = " +self.groupssss[k].unique_key);
                        console.log("..");
                        var swam = self.groupssss[k].unique_key;
                    }







                    var ob = {
                        "realname": realname,
                        "users_LOGIN": self.userscores[b].users_LOGIN,
                        "completed": self.userscores[b].completed,
                        "score": self.userscores[b].score,
                        "sleutel": swam,
                        "last_login": lasttime,
                        "timestamp": lasttime2,
                    };
                    self.rapporten.push(ob);
                    self.rapcopy.push(ob);
                }
            }

            var headerRow = {
                "realname": "Naam",
                "users_LOGIN": "Loginnaam",
                "completed": "voltooid",
                "score": "score",
                "sleutel": "Inlogsleutel",
                "last_login": "laatste inlog",
                "timestamp": "Geregistreerd op",

            };

            self.rapcopy.unshift(headerRow);
        };




        var d = new Date();
        self.datenow = d.toLocaleDateString();

        this.prettyDate = function(date) {
            var months = ['Jan', 'Feb', 'Maa', 'Apr', 'Mei', 'Jun',
                'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dec'
            ];

            //return months[date.getUTCMonth()] + ' ' + date.getUTCDate() + ' ' + date.getUTCHours() + ":" + date.getUTCMinutes();
            return months[date.getUTCMonth()] + ' ' + date.getUTCDate() + ' ' + date.getUTCFullYear();;
        };



        this.debug = "OK";

    });