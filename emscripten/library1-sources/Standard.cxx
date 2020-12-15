class Standard_MMgrFactory
{
public:
  static int GetMMgr();
  ~Standard_MMgrFactory(){}
};

int Standard_MMgrFactory::GetMMgr()
{
  static Standard_MMgrFactory aFactory;
  return 1;
}
