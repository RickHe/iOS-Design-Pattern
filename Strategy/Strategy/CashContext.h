//
//  CashContext.h
//  Strategy
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

@interface CashContext : NSObject

+ (CashContext *)cashContextWithType:(NSString *)type;
- (CGFloat)getResult:(CGFloat)money;

@end
