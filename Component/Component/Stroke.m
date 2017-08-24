//
//  Stroke.m
//  Component
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "Stroke.h"

@interface Stroke ()

@property (nonatomic, strong) NSMutableArray *children;

@end

@implementation Stroke

- (instancetype)init
{
    self = [super init];
    if (self) {
        _children = [NSMutableArray new];
    }
    return self;
}

- (CGPoint)location {
    if (_children.count > 0) {
        id<Mark> child = [_children objectAtIndex:0];
        return [child location];
    } else {
        return CGPointZero;
    }
}

- (id<Mark>)lastChild {
    return [_children lastObject];
}

- (NSUInteger)count {
    return _children.count;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    } else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
    [_children removeObject:mark];
}

- (id<Mark>)childAtIndex:(NSUInteger)index {
    return [_children objectAtIndex:index];
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    for (id<Mark> mark in self.children) {
        [mark drawWithContext:context];
    }
    CGContextSetLineWidth(context, self.size);
    CGContextSetStrokeColorWithColor(context, self.color.CGColor);
    CGContextStrokePath(context);
}

@end
