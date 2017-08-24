//
//  ImageShadowFilter.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ImageShadowFilter.h"
#import <UIKit/UIKit.h>

@implementation ImageShadowFilter

- (void)apply {
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGSize offset = CGSizeMake(-100, 15);
    CGContextSetShadow(contextRef, offset, 0.5);
}

@end
