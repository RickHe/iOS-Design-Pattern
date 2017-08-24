//
//  ViewController.m
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ViewController.h"
#import "ClassAdapter.h"
#import "ObjectAdapter.h"
#import "ObjectAdaptee.h"
#import "ObjectAdaptee1.h"
#import "CPlusPlusAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /**
     *  类适配器使用
     */
    ClassAdapter *adapter = [ClassAdapter new];
    [adapter request];
    
    /**
     *  对象适配器使用
     */
    ObjectAdapter *objAdapter = [ObjectAdapter new];
    objAdapter.adaptee1 = [ObjectAdaptee1 new];
    objAdapter.adaptee = [ObjectAdaptee new];
    [objAdapter request1];
    [objAdapter request];
    
    /**
     *  适配器模式用于 Objective-C C++混编
     */
    CPlusPlusAdapter *cppAdapter = [CPlusPlusAdapter new];
    [cppAdapter setInt:10];
    [cppAdapter doSomething];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
