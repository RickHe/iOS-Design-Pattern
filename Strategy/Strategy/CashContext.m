//
//  CashContext.m
//  Strategy
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CashContext.h"
#import "CashNormal.h"
#import "CashRebate.h"
#import "CashReturn.h"

@interface CashContext ()

@property (nonatomic, strong) CashSuper *cashStrategy;

@end

@implementation CashContext

+ (CashContext *)cashContextWithType:(NSString *)type {
    CashContext *cashContext = [CashContext new];
    if ([type hasPrefix:@"正常收费"]) {
        cashContext.cashStrategy = [CashNormal new];
    } else if ([type hasPrefix:@"满"]) {
        cashContext.cashStrategy = [CashReturn new];
        CashReturn *cashReturn = (CashReturn *)cashContext.cashStrategy;
        cashReturn.moneyCondition = 100;
        cashReturn.moneyReturn = 20;
    } else if ([type hasPrefix:@"打"]) {
        cashContext.cashStrategy = [CashRebate new];
        CashRebate *cashRebate = (CashRebate *)cashContext.cashStrategy;
        cashRebate.moneyRate = 0.8;
    } else {
        cashContext = nil;
    }
    return cashContext;
}

- (CGFloat)getResult:(CGFloat)money {
    return [self.cashStrategy acceptCash:money];
}

@end
