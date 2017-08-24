//
//  HMYImageView.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "HMYImageView.h"

@implementation HMYImageView

- (void)drawRect:(CGRect)rect {
    [_image drawInRect:rect];
}

@end
