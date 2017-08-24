//
//  UIImage+BaseFilter.h
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BaseFilter)

- (CGContextRef)beginContext;
- (UIImage *)getImageFromCurrentContext;
- (void)endContext;

@end
