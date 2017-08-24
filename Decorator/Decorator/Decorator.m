//
//  Decorator.m
//  Decorator
//
//  Created by DaFenQi on 16/9/18.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (void)operaton {
    if (self.component) {
        [self.component operaton];
    }
}

@end
