//
//  Visitor.h
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ConcreteElement1;
@class ConcreteElement2;

@protocol Visitor <NSObject>

@optional
- (void)visitConcreteElement1:(ConcreteElement1 *)element1;
- (void)visitConcreteElement2:(ConcreteElement2 *)element2;

@end
