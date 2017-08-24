//
//  CrystalShield.h
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "AttackHandle.h"
#import "LightningAttack.h"

@interface CrystalShield : AttackHandle

- (void)handleAttack:(BaseAttack *)attack;

@end
