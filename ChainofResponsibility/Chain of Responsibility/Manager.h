//
//  Manager.h
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Approval.h"

@interface Manager : NSObject

- (void)handleApproval:(Approval *)approval;

@property (nonatomic, strong) Manager *nextManager;

@end
