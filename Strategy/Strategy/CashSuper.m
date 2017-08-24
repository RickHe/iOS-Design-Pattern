//
//  CashSuper.m
//  Strategy
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CashSuper.h"

@implementation CashSuper

- (CGFloat)acceptCash:(CGFloat)money {
    [NSException raise:@"should override" format:@"should override"];
    return 0;
}

@end
