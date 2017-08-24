//
//  Component.h
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

/**
 *  扩展的操作
 */

#import <Foundation/Foundation.h>

@protocol Component <NSObject>

@required
- (void)operaton;

@end
