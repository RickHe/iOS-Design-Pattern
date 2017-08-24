//
//  DirectManager.m
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "DirectManager.h"

@implementation DirectManager

- (void)handleApproval:(Approval *)approval {
    // self deal
    // do something
    // next responder deal
    [super handleApproval:approval];
}

@end
