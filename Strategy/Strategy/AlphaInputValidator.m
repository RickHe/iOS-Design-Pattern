//
//  AlphaInputValidator.m
//  Strategy
//
//  Created by DaFenQi on 16/9/2.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "AlphaInputValidator.h"

static NSString *const alphaInputInvalidDomain = @"alphaInputInvalidDomain";

@implementation AlphaInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    NSError *regexError = nil;
    NSRegularExpression *regularExpression = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:&regexError];
    NSUInteger numberOfLines = [regularExpression numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, input.text.length)];
    if (numberOfLines == 0) {
        if (error) {
            *error = [NSError errorWithDomain:alphaInputInvalidDomain code:1001 userInfo:@{ @"error" : @"no alpha"} ];
        }
        return NO;
    }
    
    return YES;
}

@end
