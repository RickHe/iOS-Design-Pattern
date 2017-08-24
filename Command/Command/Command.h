//
//  Command.h
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

/**
 * command抽象基类
 * 定义了一个command协议(作用将所有的子类统一管理)
 * 根据需要定义相应的子类
 * 可以将多次使用的复杂命令(操作)简化成excute command操作
 * 方便管理复杂操作的执行,撤销
 */

#import <Foundation/Foundation.h>

@protocol CommandDelegate;
@protocol Command;

@protocol Command <NSObject>

@property (nonatomic, strong) NSDictionary *userInfo;
@property (nonatomic, weak) id<CommandDelegate> delegate;

- (void)excute;
- (void)cancel;
- (void)done;

@end

@protocol CommandDelegate <NSObject>

- (void)commandDidFinished:(id<Command>)command;
- (void)commandDidFailed:(id<Command>)command;

@end

@interface Command : NSObject <Command>

@property (nonatomic, strong) NSDictionary *userInfo;
@property (nonatomic, weak) id<CommandDelegate> delegate;

+ (instancetype)command;

- (void)excute;
- (void)cancel;
- (void)done;

@end
