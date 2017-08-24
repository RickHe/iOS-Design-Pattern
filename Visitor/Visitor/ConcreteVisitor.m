//
//  ConcreteVisitor.m
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ConcreteVisitor.h"
#import "ConcreteElement1.h"

@implementation ConcreteVisitor

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)visitConcreteElement1:(ConcreteElement1 *)element1 {
    NSLog(@"%@ do something", NSStringFromClass([element1 class]));
}

@end
