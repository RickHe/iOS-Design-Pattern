//
//  ClassAdapter.h
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

/**
 *  适配类 适配客户端需要的接口
 */

#import "ClassAdaptee.h"
#import "ClassTarget.h"

@interface ClassAdapter : ClassAdaptee <ClassTarget>

- (void)request;

@end
