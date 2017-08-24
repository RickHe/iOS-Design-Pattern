//
//  UIImage+Shadow.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "UIImage+Shadow.h"
#import "UIImage+BaseFilter.h"

@implementation UIImage (Shadow)

- (UIImage *)imageWithShadow {
    CGContextRef context = [self beginContext];
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
    UIImage *image = [self getImageFromCurrentContext];
    [self endContext];
    return image;
}

@end
