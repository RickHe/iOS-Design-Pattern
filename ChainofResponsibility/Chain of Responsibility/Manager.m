//
//  Manager.m
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (void)handleApproval:(Approval *)approval {
    [self.nextManager handleApproval:approval];
}

@end
