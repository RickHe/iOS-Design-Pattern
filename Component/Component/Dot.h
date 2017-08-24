//
//  Dot.h
//  Component
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;

- (void)drawWithContext:(CGContextRef)context;

@end
