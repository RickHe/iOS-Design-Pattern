//
//  CustomTextField.m
//  Strategy
//
//  Created by DaFenQi on 16/9/2.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (BOOL)validate {
    NSError *errror = nil;
    BOOL validateResultion = [self.inputValidator validateInput:self error:&errror];
    if (!validateResultion) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"输入错误" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alert show];
    }
    return validateResultion;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
