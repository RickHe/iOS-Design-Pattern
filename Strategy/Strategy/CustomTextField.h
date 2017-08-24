//
//  CustomTextField.h
//  Strategy
//
//  Created by DaFenQi on 16/9/2.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomTextField : UITextField

@property (nonatomic, strong) InputValidator *inputValidator;

- (BOOL)validate;

@end
