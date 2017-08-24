//
//  ViewController.m
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ViewController.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightningAttack.h"
#import "AttackHandle.h"
#import "Avatar.h"
#import "MetalArmor.h"
#import "CrystalShield.h"

/**
 *  责任链模式
 * 使得多个对象都有处理请求的能力
 * 从而可以使得处理的请求者和接受者解耦
 * 多个对象形成一条链,处理可以沿着这条链传递,直到可以处理该请求的对象
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 创建人物
    Avatar *avatar = [Avatar new];
    
    // 装备 1
    MetalArmor *metalArmor = [MetalArmor new];
    [metalArmor setNextAttackHandle:avatar];
    
    //
    CrystalShield *cry = [CrystalShield new];
    [cry setNextAttackHandle:metalArmor];
    
    // 攻击
    SwordAttack *sword = [SwordAttack new];
    [cry handleAttack:sword];
    
    MagicFireAttack *fireAttack = [MagicFireAttack new];
    [cry handleAttack:fireAttack];
    
    LightningAttack *lightAttack = [LightningAttack new];
    [cry handleAttack:lightAttack];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
