//
//  ViewController.m
//  Component
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ViewController.h"
#import "Vertex.h"
#import "Dot.h"
#import "Stroke.h"
#import "CanvasView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Dot *newDot = [Dot new];
    Stroke *stroke = [Stroke new];
    [stroke addMark:newDot];
    
    Vertex *vertex = [Vertex new];
    Stroke *newStroke = [Stroke new];
    [newStroke addMark:vertex];
    [stroke addMark:newStroke];
    
    CanvasView *canvasView = [[CanvasView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:canvasView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
