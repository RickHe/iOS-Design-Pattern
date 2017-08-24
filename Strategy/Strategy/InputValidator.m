
//
//  InputValidator.m
//  Strategy
//
//  Created by DaFenQi on 16/9/2.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
