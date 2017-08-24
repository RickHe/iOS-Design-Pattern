//
//  ViewController.h
//  Strategy
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

/**
 * 策略模式
 * 定义一系列算法,把他们一个一个封装起来并且使得他们可以相互替换,笨模式使得算法可独立于使用它的客户的变化而变化
 */

/**
 *  模型-视图-控制器中的策略模式
 * 控制器决定视图对模型数据进行显示的时机与内容
 * 视图本身知道如何绘图,但需要控制器告诉他所需要显示的内容
 * 同一个视图如果与不同的控制器合作,数据的输出格式可能一样,但数据的类型和格式肯可能随着不同的控制器的不同输出而不同.
 * 因此这种情况下控制器是视图的策略
 * 控制器视图之间是一种基于策略模式的关系
 */

/*
 * 何时使用策略模式
 * 在一个类中使用多个条件语句定义许多的行为,我们可以把相关的条件分支移动他们自己的策略累中
 * 需要各种算法变体
 * 需要避免把复杂的与算法相关的数据结构暴露给客户端
 */



#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end
