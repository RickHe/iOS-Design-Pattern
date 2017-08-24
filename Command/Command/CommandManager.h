//
//  CommandManager.h
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface CommandManager : NSObject

@property (nonatomic, strong) NSMutableArray *commandQueue;

+ (instancetype)sharedManager;

+ (void)excuteCommand:(id<Command>)cmd observer:(id<CommandDelegate>)observer;
+ (void)cancelCommand:(id<Command>)cmd;
+ (void)cancelCommandByClass:(Class)cls;
+ (void)cancelCommandByObserver:(id<CommandDelegate>)observer;

+ (instancetype)isExcutingCommand:(Class)cls;

@end
