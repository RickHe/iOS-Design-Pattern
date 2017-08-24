//
//  ViewController.m
//  Strategy
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"
#import "NumberInputValidator.h"
#import "CashContext.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CustomTextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.inputValidator = [NumberInputValidator    new];
    self.textField.delegate = self;
    
    CashContext *context = [CashContext cashContextWithType:@"满100减20"];
    NSLog(@"%.2f", [context getResult:1000]);
    CashContext *context1 = [CashContext cashContextWithType:@"打8折"];
    NSLog(@"%.2f", [context1 getResult:1000]);
    CashContext *context2 = [CashContext cashContextWithType:@"正常收费"];
    NSLog(@"%.2f", [context2 getResult:1000]);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField validate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
