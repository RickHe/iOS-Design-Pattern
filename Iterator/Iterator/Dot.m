//
//  Dot.m
//  Component
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "Dot.h"

@implementation Dot

- (void)drawWithContext:(CGContextRef)context {
    CGFloat x = self.location.x;
    CGFloat y = self.location.y;
    CGFloat frameSize = self.size;
    CGRect frame = CGRectMake(x, y, frameSize, frameSize);
    CGContextSetFillColorWithColor(context, [self.color CGColor]);
    CGContextFillEllipseInRect(context, frame);
}

@end
