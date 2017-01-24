'use strict';

describe('Service: dtsWebservice', function () {

  // load the service's module
  beforeEach(module('dtsAdminApp'));

  // instantiate service
  var dtsWebservice;
  beforeEach(inject(function (_dtsWebservice_) {
    dtsWebservice = _dtsWebservice_;
  }));

  it('should do something', function () {
    expect(!!dtsWebservice).toBe(true);
  });

});
