//
//  CPlusPlusClass.hpp
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#ifndef CPlusPlusClass_hpp
#define CPlusPlusClass_hpp

#include <stdio.h>

class CPlusPlusClass {
private:
    int i;
public:
    CPlusPlusClass();
    virtual ~CPlusPlusClass();
    void doSomething();
    void setInt(int i);
};

#endif /* CPlusPlusClass_hpp */
