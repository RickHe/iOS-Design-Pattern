//
//  CashRebate.h
//  Strategy
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CashSuper.h"

@interface CashRebate : CashSuper

@property (nonatomic, assign) CGFloat moneyRate;

- (CGFloat)acceptCash:(CGFloat)money;

@end
