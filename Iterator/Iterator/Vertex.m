//
//  Vertex.m
//  Component
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "Vertex.h"
#import "MarkEnumerator.h"

@implementation Vertex

//- (void)setColor:(UIColor *)color {}
//- (UIColor *)color { return nil; }
//- (void)setSize:(CGFloat)size {}
//- (CGFloat)size { return 0; }
- (id<Mark>)lastChild { return nil; }
- (NSUInteger)count { return 0; }

- (void)addMark:(id<Mark>)mark {}
- (void)removeMark:(id<Mark>)mark {}
- (id<Mark>)childAtIndex:(NSUInteger)index { return nil; }

- (void)drawWithContext:(CGContextRef)context {
    CGFloat x = self.location.x;
    CGFloat y = self.location.y;
    CGContextAddLineToPoint(context, x, y);
}

- (NSEnumerator *)enumerator {
    return [[MarkEnumerator alloc] initWithMark:self];
}

@end
