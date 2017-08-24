//
//  ConcreteElement1.h
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "Element.h"
#import "ConcreteVisitor.h"

@interface ConcreteElement1 : Element

- (void)acceptVisitor:(ConcreteVisitor *)visitor;

@end
