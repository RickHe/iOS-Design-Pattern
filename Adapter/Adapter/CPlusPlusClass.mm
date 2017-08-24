//
//  CPlusPlusClass.cpp
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#include "CPlusPlusClass.h"

CPlusPlusClass::CPlusPlusClass() : i(0) {
    printf("init\n");
    doSomething();
}

CPlusPlusClass::~CPlusPlusClass() {
    printf("dealloc\n");
}

void CPlusPlusClass::doSomething() {
    printf("doSomething\n");
}

void CPlusPlusClass::setInt(int i) {
    this->i = i;
    printf("%d\n", i);
}