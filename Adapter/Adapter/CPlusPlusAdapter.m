//
//  CPlusPlusAdapter.m
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "CPlusPlusAdapter.h"
#import "CPlusPlusClass.h"

@interface CPlusPlusAdapter () {
    CPlusPlusClass *_cppClass;
}

@end

@implementation CPlusPlusAdapter

- (void)dealloc {
    delete _cppClass;
    _cppClass = nullptr;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cppClass = new CPlusPlusClass();
    }
    return self;
}

- (void)setInt:(int)intValue {
    _cppClass->setInt(intValue);
}

- (void)doSomething {
    _cppClass->doSomething();
}

@end
