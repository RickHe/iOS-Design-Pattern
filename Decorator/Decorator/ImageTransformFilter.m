//
//  ImageTransformFilter.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ImageTransformFilter.h"
#import <UIKit/UIKit.h>

@interface ImageTransformFilter ()

@property (nonatomic, assign) CGAffineTransform transform;

@end

@implementation ImageTransformFilter

- (instancetype)initWithComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform {
    self = [super initWithComponent:component];
    if (self) {
        _transform = transform;
    }
    return self;
}

- (void)apply {
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(contextRef, _transform);
}

@end
