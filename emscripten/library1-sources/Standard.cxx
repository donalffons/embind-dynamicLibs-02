// Created on: 2005-03-15
// Created by: Peter KURNEV
// Copyright (c) 1998-1999 Matra Datavision
// Copyright (c) 1999-2014 OPEN CASCADE SAS
//
// This file is part of Open CASCADE Technology software library.
//
// This library is free software; you can redistribute it and/or modify it under
// the terms of the GNU Lesser General Public License version 2.1 as published
// by the Free Software Foundation, with special exception defined in the file
// OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
// distribution for complete text of the license and disclaimer of any warranty.
//
// Alternatively, this file may be used under the terms of Open CASCADE
// commercial license or contractual agreement.


#include <Standard.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrTBBalloc.hxx>
#include <Standard_Assert.hxx>

#include <stdlib.h>
#include <mm_malloc.h>

#ifndef OCCT_MMGT_OPT_DEFAULT
#define OCCT_MMGT_OPT_DEFAULT 0
#endif

class Standard_MMgrFactory
{
public:
  static Standard_MMgrRoot* GetMMgr();
  ~Standard_MMgrFactory();

private:
  Standard_MMgrFactory();
  Standard_MMgrFactory (const Standard_MMgrFactory&);
  Standard_MMgrFactory& operator= (const Standard_MMgrFactory&);

private:
  Standard_MMgrRoot* myFMMgr;
};

Standard_MMgrFactory::Standard_MMgrFactory()
: myFMMgr (NULL)
{
}

Standard_MMgrFactory::~Standard_MMgrFactory()
{
  if (  myFMMgr )
    myFMMgr->Purge(Standard_True);
}


Standard_MMgrRoot* Standard_MMgrFactory::GetMMgr()
{
  static Standard_MMgrFactory aFactory;
  return aFactory.myFMMgr;
}
