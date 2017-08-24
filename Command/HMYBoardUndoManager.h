//
//  HMYBoardUndoManager.h
//  Command
//
//  Created by DaFenQi on 16/9/1.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMYBoardUndoManager : NSObject

- (void)excuteInvocation:(NSInvocation *)invocation
      withUndoInvocation:(NSInvocation *)undoInvocation;
- (void)unexcuteInvocation:(NSInvocation *)invocation
        withRedoInvocation:(NSInvocation *)redoInvocation;

@end
