//
//  ImageComponent.h
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ImageComponent <NSObject>

@optional
- (void)drawInRect:(CGRect)rect;
- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)drawAtPoint:(CGPoint)point;
- (void)drawAsPatternInRect:(CGRect)rect;
- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;

@end
