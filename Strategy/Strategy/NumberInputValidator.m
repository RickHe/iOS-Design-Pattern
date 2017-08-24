//
//  NumberInputValidator.m
//  Strategy
//
//  Created by DaFenQi on 16/9/2.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "NumberInputValidator.h"

static NSString *const InputValidErrorDomain = @"InputValidErrorDomain";

@implementation NumberInputValidator

- (BOOL) validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    NSError *regexError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:&regexError];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[input text] options:NSMatchingAnchored range:NSMakeRange(0, input.text.length)];
    if (numberOfMatches == 0) {
        if (error) {
            NSString *descrip = NSLocalizedString(@"input valied failed", @"");
            NSString *reason = NSLocalizedString(@"contain only number", @"");
            NSArray *objArray = [NSArray arrayWithObjects:descrip, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidErrorDomain code:1001 userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end
