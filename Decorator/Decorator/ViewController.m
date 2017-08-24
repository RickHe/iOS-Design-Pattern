//
//  ViewController.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ViewController.h"
#import "Decorator.h"
#import "ConcreteComponent.h"
#import "ConcreteDecorator.h"
#import "ConcreteDecorator1.h"
#import "UIImage+ImageComponent.h"
#import "ImageShadowFilter.h"
#import "ImageTransformFilter.h"
#import "HMYImageView.h"
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ConcreteComponent *component = [ConcreteComponent new];
    ConcreteDecorator *cd = [ConcreteDecorator new];
    ConcreteDecorator1 *cd1 = [ConcreteDecorator1 new];
    
    cd.component = component;
    cd1.component = cd;
    [cd1 operaton];
    
    UIImage *image = [UIImage imageNamed:@"beauty.jpg"];
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0, image.size.width / 8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    
    id<ImageComponent>transformImage = [[ImageTransformFilter alloc] initWithComponent:image transform:finalTransform];
    id<ImageComponent>shadowImage = [[ImageShadowFilter alloc] initWithComponent:transformImage];
    HMYImageView *imageview = [[HMYImageView alloc] initWithFrame:self.view.bounds];
    imageview.backgroundColor = [UIColor cyanColor];
    imageview.contentMode = UIViewContentModeTopLeft;
    imageview.image = shadowImage;
    [self.view addSubview:imageview];
    
    UIImage *oriImage = [UIImage imageNamed:@"beauty.jpg"];
    UIImage *transImage = [oriImage imageWithTransform:finalTransform];
    UIImage *shadImage = [transImage imageWithShadow];
    HMYImageView *imageview1 = [[HMYImageView alloc] initWithFrame:self.view.bounds];
    imageview1.backgroundColor = [UIColor cyanColor];
    imageview1.contentMode = UIViewContentModeTopLeft;
    imageview1.image = shadImage;
    [self.view addSubview:imageview1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
