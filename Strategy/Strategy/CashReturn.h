//
//  CashReturn.h
//  Strategy
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CashSuper.h"

@interface CashReturn : CashSuper

@property (nonatomic, assign) CGFloat moneyCondition;
@property (nonatomic, assign) CGFloat moneyReturn;

- (CGFloat)acceptCash:(CGFloat)money;

@end
