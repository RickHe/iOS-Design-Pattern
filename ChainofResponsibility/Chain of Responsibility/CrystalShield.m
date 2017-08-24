
//
//  CrystalShield.m
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "CrystalShield.h"
#import "LightningAttack.h"

@implementation CrystalShield

- (void)handleAttack:(BaseAttack *)attack {
    NSLog(@"%s", __func__);
    if ([attack isKindOfClass:[LightningAttack class]]) {
        NSLog(@"%@ handle", NSStringFromClass([attack class]));
    } else {
        [super handleAttack:attack];
    }
}

@end
