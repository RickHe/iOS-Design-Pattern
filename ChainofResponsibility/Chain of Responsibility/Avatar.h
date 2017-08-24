//
//  Avatar.h
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "AttackHandle.h"

@interface Avatar : AttackHandle

//写明清晰
- (void)handleAttack:(BaseAttack *)attack;

@end
