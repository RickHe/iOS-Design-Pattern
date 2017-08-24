//
//  Stroke.h
//  Component
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject <Mark>

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, assign, readonly) NSUInteger count;
@property (nonatomic, strong, readonly) id <Mark> lastChild;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childAtIndex:(NSUInteger)index;
- (void)drawWithContext:(CGContextRef)context;
/**
 *  外部迭代器
 *
 *  @return 外部迭代器
 */
- (NSEnumerator *)enumerator;

/**
 *  内部迭代器
 *
 *  @param block
 */
- (void)enumeratorMarksUsingBlock:(EnumeratorBlock)block;

@end
