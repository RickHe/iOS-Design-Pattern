//
//  CashRebate.m
//  Strategy
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CashRebate.h"

@implementation CashRebate

- (CGFloat)acceptCash:(CGFloat)money {
    if (self.moneyRate) {
        return money * self.moneyRate;
    } else {
        return money;
    }
}

@end
