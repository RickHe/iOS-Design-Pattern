//
//  ImageTransformFilter.h
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ImageFilter.h"
#import <CoreGraphics/CoreGraphics.h>

@interface ImageTransformFilter : ImageFilter

- (instancetype)initWithComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform;

- (void)apply;

@end
