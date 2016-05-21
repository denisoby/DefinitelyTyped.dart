DefinitelyTyped.dart
=====

Converting TypeScript ".d.ts" annotations to dart2js

This is version alpha0.
Generated files may need some minor fixes for real use.
A lot of functionality, like types inheritance "Server extends event.Emitter" should be done in future.

## Example

See /generated/node_libs/http.dart

## Usage
nmp install
cd lib
node app.js --source /path/to/file.d.ts

All the results will be stored in "/generated" folder.

## Feedback is appreciated
... via issues
... or email denis.obydennykh[at]gmail.com