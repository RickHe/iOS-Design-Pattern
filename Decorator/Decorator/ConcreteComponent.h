//
//  ConcreteComponent.h
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

@interface ConcreteComponent : NSObject <Component>

- (void)operaton;

@end
