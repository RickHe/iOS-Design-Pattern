//
//  Board.h
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Board : NSObject

- (void)push:(NSString *)str;
- (void)pop;
- (void)printBoard;

@end
