//
//  MarkEnumerator.h
//  Iterator
//
//  Created by DaFenQi on 16/9/21.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

/**
 * 外部迭代器
 */

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface MarkEnumerator : NSEnumerator

- (instancetype)initWithMark:(id<Mark>)mark;

@end
