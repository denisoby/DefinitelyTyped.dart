require('./d8.js'); //adopt V8 env to dart2js compiled code

global.dart = {};
global.http = require('http');
global.fs = require('fs');
global.path = require('path');
global.mongodb = require('mongodb');
require('./main.dart.js');

//dart.testFunc();