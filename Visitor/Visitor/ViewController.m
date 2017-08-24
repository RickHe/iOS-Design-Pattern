//
//  ViewController.m
//  Visitor
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteVisitor2.h"
#import "ConcreteVisitor.h"
#import "ConcreteElement2.h"
#import "ConcreteElement1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ConcreteElement1 *element1 = [ConcreteElement1 new];
    ConcreteVisitor *visit1 = [ConcreteVisitor new];
    [element1 acceptVisitor:visit1];
    
    ConcreteElement2 *element2 = [ConcreteElement2 new];
    ConcreteVisitor2 *visit2 = [ConcreteVisitor2 new];
    [element2 acceptVisitor:visit2];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
