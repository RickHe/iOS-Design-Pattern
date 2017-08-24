//
//  AlphaInputValidator.h
//  Strategy
//
//  Created by DaFenQi on 16/9/2.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "InputValidator.h"

@interface AlphaInputValidator : InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error;

@end
