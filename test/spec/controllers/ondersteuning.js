'use strict';

describe('Controller: OndersteuningCtrl', function () {

  // load the controller's module
  beforeEach(module('dtsAdminApp'));

  var OndersteuningCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    OndersteuningCtrl = $controller('OndersteuningCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(OndersteuningCtrl.awesomeThings.length).toBe(3);
  });
});
