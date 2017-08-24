//
//  ConcreteElement2.m
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ConcreteElement2.h"

@implementation ConcreteElement2

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)acceptVisitor:(ConcreteVisitor2 *)visitor {
    [visitor visitConcreteElement2:self];
}

@end
