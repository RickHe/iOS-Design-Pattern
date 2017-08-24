//
//  MarkEnumerator.m
//  Iterator
//
//  Created by DaFenQi on 16/9/21.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "MarkEnumerator.h"
#import "NSMutableArray+Stack.h"

@interface MarkEnumerator () {
    NSMutableArray *_stack;
}

@end

@implementation MarkEnumerator

- (NSArray *)allObjects {
    return [[_stack reverseObjectEnumerator] allObjects];
}

- (id)nextObject {
    return [_stack pop];
}

- (instancetype)initWithMark:(id<Mark>)mark {
    if ((self = [super init])) {
        _stack = [NSMutableArray new];
        [self traverseAndBuildStackWithMark:mark];
    }
    return self;
}

/**
 *  利用栈遍历树
 *  从右到左入栈,从左到右出栈
 *
 *  @param mark component树
 */
- (void)traverseAndBuildStackWithMark:(id<Mark>)mark {
    if (mark == nil) {
        return;
    }
    [_stack push:mark];
    NSUInteger index = [mark count];
    id<Mark> childMark;
    while ((childMark = [mark childAtIndex:--index])) {
        [self traverseAndBuildStackWithMark:childMark];
    }
}

@end
