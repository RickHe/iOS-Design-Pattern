//
//  Board.m
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "Board.h"

@interface Board () {
    NSMutableArray *_boardStack;
}

@end

@implementation Board

- (instancetype)init {
    if (self = [super init]) {
        _boardStack = [NSMutableArray new];
    }
    return self;
}

- (void)push:(NSString *)str {
    NSLog(@"%s", __func__);
}

- (void)pop {
    NSLog(@"%s", __func__);
}

- (void)printBoard {
    for (NSString *str in _boardStack) {
        NSLog(@"%@", str);
    }
}

@end
