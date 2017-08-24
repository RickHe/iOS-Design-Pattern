//
//  AttackHandle.h
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseAttack.h"

@interface AttackHandle : NSObject

- (void)handleAttack:(BaseAttack *)attack;

@property (nonatomic, strong) AttackHandle *nextAttackHandle;

@end
