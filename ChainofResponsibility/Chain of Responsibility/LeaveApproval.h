//
//  LeaveApproval.h
//  Chain of Responsibility
//
//  Created by hmy2015 on 16/9/6.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "Approval.h"

@interface LeaveApproval : Approval

@property (nonatomic, strong) NSDate* beginDate;
@property (nonatomic, strong) NSDate* endDate;

@end
