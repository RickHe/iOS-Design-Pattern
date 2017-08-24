//
//  ConcreteElement1.m
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ConcreteElement1.h"

@implementation ConcreteElement1

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)acceptVisitor:(ConcreteVisitor *)visitor {
    [visitor visitConcreteElement1:self];
}

@end
