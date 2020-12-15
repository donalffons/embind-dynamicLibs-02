Build: `docker build -t test .`

Run: `docker run -it --net=host -v "$(pwd)":"/app/" test`

Visit: `http://localhost:5000/javascript/`

Problem:

Current build configuration yields:

```
Uncaught (in promise) RuntimeError: abort(Assertion failed: function in Table but not functionsInTableMap) at Error
    at jsStackTrace (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:1806:19)
    at stackTrace (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:2328:16)
    at abort (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:1547:44)
    at assert (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:717:5)
    at addFunctionWasm (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:571:5)
    at updateGOT (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:1871:34)
    at relocateExports (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:1896:7)
    at postInstantiation (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:2089:27)
    at https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:2108:20
    at async Promise.all (index 0)
    at abort (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:1553:11)
    at assert (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:717:5)
    at addFunctionWasm (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:571:5)
    at updateGOT (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:1871:34)
    at relocateExports (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:1896:7)
    at postInstantiation (https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:2089:27)
    at https://embind-dynamic-libs-01.vercel.app/emscripten/build/main.js:2108:20
    at async Promise.all (index 0)
```
