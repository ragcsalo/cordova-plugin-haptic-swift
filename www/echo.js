window.echo = function(str, callback) {
  cordova.exec(callback, function(err) {
      callback('Nothing to echo.');
  }, "Echo", "echo", [str]);
};

window.shortvibra = function(callback) {
  cordova.exec(callback, function(err) {
      callback('shortvibra error');
  }, "Echo", "shortvibra");
};

window.longvibra = function(callback) {
  cordova.exec(callback, function(err) {
      callback('longvibra error');
  }, "Echo", "longvibra");
};



