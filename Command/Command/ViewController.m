//
//  ViewController.m
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ViewController.h"
#import "Receiver.h"

/*********************************
 * client 创建一个concreteCommand对象,并且指定receiver
 * invoker 要求通用命令 (concreteCommand 执行命令)
 * command 是为Invoker所知道的通用接口(协议)
 * concreteCommand是receiver和action之间的中间人
 * receiver 执行实际操作的任何对象
 
 * 概念:
 * 将请求封装成为一个对象,从而可用不同的请求队客户进行参数化
 * 对请求排队或者记录请求日志,以及支持可撤销的操作
 
 * NSInvocation NSUndoManager target action机制
 
 //!!!: 不对
 * 自己的理解::
 * 客户端比如说vc 创建command
 * command(什么不用管命令发一个命令) 创建一个receiver(任意可执行时机操作对象)指定receiver调用action
 * action 调用concreteCommand的执行命令方法
 
 * NSInvocation类
 * NSInvocation类与concreteCommand类实现相似
 * NSInvocation类封装运行时库像接收器转发消息所需的必要消息如target asel argument
 
 *********************************/

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMethodSignature *methodSignature = [Receiver instanceMethodSignatureForSelector:@selector(doSomething)];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSignature];
    [invocation setTarget:[Receiver new]];
    [invocation setSelector:@selector(doSomething)];
    [invocation invoke];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
