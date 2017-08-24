//
//  ConcreteVisitor2.m
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ConcreteVisitor2.h"
#import "ConcreteElement2.h"

@implementation ConcreteVisitor2

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)visitConcreteElement2:(ConcreteElement2 *)element2 {
    NSLog(@"%@ do something", NSStringFromClass([element2 class]));
}

@end
