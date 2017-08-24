//
//  Decorator.h
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

@interface Decorator : NSObject <Component>

@property (nonatomic, strong) id<Component>component;

- (void)operaton;

@end
