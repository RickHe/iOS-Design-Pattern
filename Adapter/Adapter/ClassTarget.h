//
//  ClassTarget.h
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ClassTarget <NSObject>

/**
 *  用户需要的接口
 */
- (void)request;

@end
