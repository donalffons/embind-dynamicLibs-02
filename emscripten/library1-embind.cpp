#include "library1.h"

#include <emscripten/bind.h>
using namespace emscripten;

EMSCRIPTEN_BINDINGS(library) {
  class_<Handle_SomeTestClass>("Handle_SomeTestClass");
}
