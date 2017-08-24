//
//  CashReturn.m
//  Strategy
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CashReturn.h"

@implementation CashReturn

- (CGFloat)acceptCash:(CGFloat)money {
    CGFloat result = money;
    if (money >= self.moneyCondition) {
        CGFloat moneyReturn = self.moneyReturn * ((NSUInteger)money / (NSUInteger)self.moneyCondition);
        result = money - moneyReturn;
    }
    return result;
}

@end
