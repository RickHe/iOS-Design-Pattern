//
//  UIImage+Transform.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Transform)

- (UIImage *)imageWithTransform:(CGAffineTransform)transform {
    CGContextRef context = [self beginContext];
    CGContextConcatCTM(context, transform);
    UIImage *image = [self getImageFromCurrentContext];
    [self endContext];
    return image;
}

@end
