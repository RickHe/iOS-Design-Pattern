//
//  ConcreteVisitor.h
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Visitor.h"

@interface ConcreteVisitor : NSObject <Visitor>

- (void)visitConcreteElement1:(ConcreteElement1 *)element1;

@end
