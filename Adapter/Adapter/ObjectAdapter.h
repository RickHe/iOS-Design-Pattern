//
//  ObjectAdapter.h
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectTarget.h"

@class ObjectAdaptee1;
@class ObjectAdaptee;

@interface ObjectAdapter : NSObject <ObjectTarget>

@property (nonatomic, strong) ObjectAdaptee *adaptee;
@property (nonatomic, strong) ObjectAdaptee1 *adaptee1;

- (void)request;
- (void)request1;

@end
