//
//  CanvasView.h
//  Component
//
//  Created by DaFenQi on 16/9/21.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

@interface CanvasView : UIView

@property (nonatomic, strong) id<Mark> mark;

@end
