//
//  InputValidator.h
//  Strategy
//
//  Created by DaFenQi on 16/9/2.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InputValidator : NSObject

- (BOOL) validateInput:(UITextField *)input error:(NSError **)error;

@end
