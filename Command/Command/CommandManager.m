//
//  CommandManager.m
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CommandManager.h"

@implementation CommandManager

static CommandManager *instance = nil;

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self class] new];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _commandQueue = [NSMutableArray new];
    }
    return self;
}

+ (void)excuteCommand:(id<Command>)cmd observer:(id<CommandDelegate>)observer {
    if (cmd && [self isExcutingCommand:[cmd class]]) {
        [[CommandManager sharedManager] excuteCommand:cmd observer:observer];
    }
}

- (void)excuteCommand:(id<Command>)cmd observer:(id<CommandDelegate>)observer {
    [self.commandQueue addObject:cmd];
    cmd.delegate = observer;
    [cmd excute];
}

+ (void)cancelCommand:(id<Command>)cmd {
    if (cmd) {
        [cmd cancel];
        [[CommandManager sharedManager].commandQueue removeObject:cmd];
    }
}

+ (void)cancelCommandByClass:(Class)cls {
    NSArray *tempArray = [NSArray arrayWithArray:[CommandManager sharedManager].commandQueue];
    for (id<Command>cmd in tempArray) {
        if ([cmd isKindOfClass:cls]) {
            [cmd cancel];
            [[CommandManager sharedManager].commandQueue removeObject:cmd];
        }
    }
}

+ (void)cancelCommandByObserver:(id<CommandDelegate>)observer {
    if (!observer) {
        return;
    }
    NSArray *tempArray = [NSArray arrayWithArray:[CommandManager sharedManager].commandQueue];
    for (id<Command>cmd in tempArray) {
        if ([cmd.delegate isEqual:observer]) {
            [cmd cancel];
            [[CommandManager sharedManager].commandQueue removeObject:cmd];
        }
    }
}

+ (instancetype)isExcutingCommand:(Class)cls {
    NSArray *tempArray = [NSArray arrayWithArray:[CommandManager sharedManager].commandQueue];
    for (id<Command>cmd in tempArray) {
        if ([cmd isKindOfClass:cls]) {
            return cmd;
        }
    }
    return nil;
}

@end
