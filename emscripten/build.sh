mkdir -p build

emcc \
  --bind ./main-embind.cpp \
  -s ENVIRONMENT='web' \
  -s EXPORT_ES6=1 \
  -s USE_ES6_IMPORT_META=0 \
  -s MAIN_MODULE=1 \
  -s ASSERTIONS=1 \
  -o ./build/main.js

emcc \
  --bind ./library1-embind.cpp \
  -s ENVIRONMENT='web' \
  -s EXPORT_ES6=1 \
  -s USE_ES6_IMPORT_META=0 \
  -s SIDE_MODULE=1 \
  -s ASSERTIONS=1 \
  -o ./build/library1.wasm

emcc \
  --bind ./library2-embind.cpp \
  -s ENVIRONMENT='web' \
  -s EXPORT_ES6=1 \
  -s USE_ES6_IMPORT_META=0 \
  -s SIDE_MODULE=1 \
  -s ASSERTIONS=1 \
  -o ./build/library2.wasm
