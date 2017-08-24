//
//  UIImage+BaseFilter.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "UIImage+BaseFilter.h"
#import <UIKit/UIKit.h>

@implementation UIImage (BaseFilter)

- (CGContextRef)beginContext {
    UIGraphicsBeginImageContextWithOptions([self size], NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    return context;
}

- (UIImage *)getImageFromCurrentContext {
    [self drawAtPoint:CGPointZero];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}

- (void)endContext {
    UIGraphicsEndImageContext();
}

@end
