//
//  ViewController.h
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

/**
 *  责任链模式
 * 使得多个对象都有机会处理请求
 * 从而避免请求的发送者和接受者耦合
 * 此模式将这些对象形成一条链,并沿着这条链传递请求,直到有个对象处理他为止
 */

/**
 *  责任链模式
 * 此模式使得一个请求能够被多个对象处理
 * 从而解耦请求的发送者和接受者
 * 将多个对象形成一条链,请求沿着这条链传递,直到有对象处理
 
 * 一下情况考虑使用责任链模式
 * 有多个对象可以处理请求,处理请求的对象运行时决定
 * 向一组对象发送请求,但不想指定处理请求的特定处理程序
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

