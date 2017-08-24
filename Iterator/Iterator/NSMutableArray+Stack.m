//
//  NSMutableArray+Stack.m
//  Iterator
//
//  Created by DaFenQi on 16/9/21.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)

- (void)push:(id)obj {
    [self addObject:obj];
}

- (id)pop {
    if (self.count < 1) {
        return nil;
    }
    id obj = [self lastObject];
    [self removeLastObject];
    return obj;
}

@end
