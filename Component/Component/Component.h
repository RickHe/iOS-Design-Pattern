//
//  Component.h
//  Component
//
//  Created by DaFenQi on 16/9/20.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Component <NSObject>

- (void)operation;
- (void)addComponent:(id<Component>)component;
- (void)removeComponent:(id<Component>)component;
- (id<Component>)getChild;

@end
