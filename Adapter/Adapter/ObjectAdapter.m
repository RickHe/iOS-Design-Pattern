//
//  ObjectAdapter.m
//  Adapter
//
//  Created by hmy2015 on 16/9/10.
//  Copyright © 2016年 何米颖大天才. All rights reserved.
//

#import "ObjectAdapter.h"
#import "ObjectAdaptee1.h"
#import "ObjectAdaptee.h"

@implementation ObjectAdapter

- (void)request {
    [self.adaptee specificRequest];
}

- (void)request1 {
    [self.adaptee1 specificRequest1];
}

@end
