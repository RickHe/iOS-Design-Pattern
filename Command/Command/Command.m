//
//  Command.m
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "Command.h"

@implementation Command

- (void)dealloc {
    [self cancel];
}

+ (instancetype)command {
    return [[self class] new];
}

- (void)excute {
    [[NSException exceptionWithName:@"exception" reason:@"incorrect invoke" userInfo:nil] raise];
}

- (void)cancel {
    self.delegate = nil;
}

- (void)done {
    if ([self.delegate respondsToSelector:@selector(commandDidFinished:)]) {
        [self.delegate commandDidFinished:self];
    }
}

@end
