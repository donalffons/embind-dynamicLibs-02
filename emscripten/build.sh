mkdir -p build

emcc \
  --bind ./empty-embind.cpp \
  -s ENVIRONMENT='web' \
  -s EXPORT_ES6=1 \
  -s USE_ES6_IMPORT_META=0 \
  -s MAIN_MODULE=1 \
  -s ASSERTIONS=1 \
  -O1 \
  -s AGGRESSIVE_VARIABLE_ELIMINATION=1 \
  -s ALLOW_MEMORY_GROWTH=1 \
  -o ./build/main.js

emcc \
  -I./globalIncludes \
  ./library1-sources/NCollection_BaseAllocator.cxx \
  ./library1-sources/NCollection_BaseMap.cxx \
  ./library1-sources/Standard_CLocaleSentry.cxx \
  ./library1-sources/Standard.cxx \
  ./library1-sources/Standard_Dump.cxx \
  ./library1-sources/Standard_ExtString.cxx \
  ./library1-sources/Standard_Failure.cxx \
  ./library1-sources/Standard_math.cxx \
  ./library1-sources/Standard_MMgrOpt.cxx \
  ./library1-sources/Standard_MMgrRaw.cxx \
  ./library1-sources/Standard_MMgrRoot.cxx \
  ./library1-sources/Standard_MMgrTBBalloc.cxx \
  ./library1-sources/Standard_OutOfMemory.cxx \
  ./library1-sources/Standard_Real.cxx \
  ./library1-sources/Standard_ShortReal.cxx \
  ./library1-sources/Standard_Transient.cxx \
  ./library1-sources/TCollection.cxx \
  --bind ./empty-embind.cpp \
  -s SIDE_MODULE=1 \
  -s ASSERTIONS=1 \
  -O1 \
  -s AGGRESSIVE_VARIABLE_ELIMINATION=1 \
  -o ./build/library1.wasm

emcc \
  -I./globalIncludes \
  ./library2-sources/math_Function.cxx \
  ./library2-sources/math_FunctionRoot.cxx \
  ./library2-sources/math_FunctionRoots.cxx \
  ./library2-sources/math_FunctionSet.cxx \
  --bind ./empty-embind.cpp \
  -s SIDE_MODULE=1 \
  -s ASSERTIONS=1 \
  -O1 \
  -s AGGRESSIVE_VARIABLE_ELIMINATION=1 \
  -o ./build/library2.wasm
