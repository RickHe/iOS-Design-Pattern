//
//  ImageFilter.h
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"

@interface ImageFilter : NSObject <ImageComponent>

@property (nonatomic, strong) id<ImageComponent> component;

- (void)apply;
- (instancetype)initWithComponent:(id<ImageComponent>)component;

@end
