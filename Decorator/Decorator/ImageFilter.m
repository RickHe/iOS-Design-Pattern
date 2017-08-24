//
//  ImageFilter.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

- (instancetype)initWithComponent:(id<ImageComponent>)component {
    self = [super init];
    if (self) {
        _component = component;
    }
    return self;
}

- (void)apply {
    // should override
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return _component;
}

@end
