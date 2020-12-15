#ifndef _LIBRARY_HEADER
#define _LIBRARY_HEADER

template <class T>
class handle
{
public:
  handle () {}

private:

  template <class T2> friend class handle;
};

class SomeTestClass
{
public:
  SomeTestClass() {}

};
typedef handle<SomeTestClass> Handle_SomeTestClass;


#endif // _LIBRARY_HEADER
