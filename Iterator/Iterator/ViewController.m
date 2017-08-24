//
//  ViewController.m
//  Iterator
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ViewController.h"
#import "Stroke.h"
#import "Dot.h"
#import "Vertex.h"
#import "MarkEnumerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     *  外部迭代器
     */
    // iOS framework 自带迭代器
    NSMutableArray *arr = [@[@"this", @"is", @"not", @"warning"] mutableCopy];
    NSEnumerator *enumerator = [arr objectEnumerator];
    id obj = nil;
    while (obj = [enumerator nextObject]) {
        NSLog(@"%@", obj);
    }
    /**
     *  内部迭代器
     * 此方法遍历数组可以修改数组内容
     */
    // use block
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isEqualToString:@"not"]) {
            *stop = YES;
        }
        if ([obj isEqualToString:@"this"]) {
            [arr removeObject:obj];
        }
        NSLog(@"%@", obj);
    }];
    // fast enumator
    for (id obj in arr) {
        NSLog(@"%@", obj);
    }
    
    // 自定义外部迭代器
    Stroke *stroke = [Stroke new];
    Vertex *vertex = [Vertex new];
    [stroke addMark:vertex];
    Stroke *newStroke = [Stroke new];
    Vertex *newVertex = [Vertex new];
    [newStroke addMark:newVertex];
    [stroke addMark:newStroke];
    
    // 外部迭代器
    MarkEnumerator *markEnumerator = (MarkEnumerator *)[stroke enumerator];
    id mark = nil;
    while (mark = [markEnumerator nextObject]) {
        NSLog(@"%@", mark);
        if (mark == newStroke) {
            [stroke removeMark:mark];
        }
    }
    markEnumerator = (MarkEnumerator *)[stroke enumerator];
    while (mark = [markEnumerator nextObject]) {
        NSLog(@"%@", mark);
    }
    
    // 内部迭代器
    [stroke enumeratorMarksUsingBlock:^(id obj, BOOL *stop) {
        NSLog(@"%@", obj);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
