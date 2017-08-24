//
//  HMYBoardUndoManager.m
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "HMYBoardUndoManager.h"
#import "Board.h"

@interface HMYBoardUndoManager () {
    Board *_board;
    NSUndoManager *_undoManager;
}

@end

@implementation HMYBoardUndoManager

- (instancetype)init {
    if (self = [super init]) {
        _board = [Board new];
        _undoManager = [NSUndoManager new];
    }
    return self;
}

- (void)excuteInvocation:(NSInvocation *)invocation
      withUndoInvocation:(NSInvocation *)undoInvocation {
    [[_undoManager prepareWithInvocationTarget:self] unexcuteInvocation:undoInvocation withRedoInvocation:invocation];
    [invocation invoke];
}

- (void)unexcuteInvocation:(NSInvocation *)invocation
        withRedoInvocation:(NSInvocation *)redoInvocation {
    [[_undoManager prepareWithInvocationTarget:self] excuteInvocation:redoInvocation withUndoInvocation:invocation];
    [invocation invoke];
}

- (NSInvocation *)drawInvocation {
    NSMethodSignature *methodSignature = [_board  methodSignatureForSelector:@selector(push:)] ;
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSignature];
    [invocation setTarget:_board];
    [invocation setSelector:@selector(push:)];
    NSString *str = @"ssdasd";
    [invocation setArgument:&str atIndex:2];
    return invocation;
}

- (NSInvocation *)revokeInvocation {
    NSMethodSignature *methodSignature = [_board methodSignatureForSelector:@selector(pop)];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSignature];
    [invocation setTarget:_board];
    [invocation setSelector:@selector(pop)];
    return invocation;
}

@end
