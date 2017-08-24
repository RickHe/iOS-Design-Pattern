//
//  CanvasView.m
//  Component
//
//  Created by DaFenQi on 16/9/21.
//  Copyright © 2016年 DaFenQi. All rights reserved.
//

#import "CanvasView.h"
#import "Dot.h"
#import "Vertex.h"
#import "Stroke.h"

@interface CanvasView () {
    CGPoint _startPoint;
    CGPoint _endPoint;
    CGPoint _lastPoint;
    Stroke *_stroke;
}

@end

@implementation CanvasView

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        // Initialization code
        [self setBackgroundColor:[UIColor whiteColor]];
        _mark = [Stroke new];
        _mark.color = [UIColor blackColor];
        _mark.size = 10;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    [_mark drawWithContext:context];
}

- (void)p_touchPointAction:(NSSet<UITouch *> *)touches {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    _startPoint = point;
    _endPoint = point;
    _lastPoint = [touch preciseLocationInView:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    _startPoint = point;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mark.location = _startPoint;
    });
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    _lastPoint = [touch previousLocationInView:self];
    if (CGPointEqualToPoint(_lastPoint, _startPoint)) {
        Stroke *stroke = [Stroke new];
        stroke.color = [UIColor blackColor];
        stroke.size = 10;
        stroke.location = _startPoint;
        [_mark addMark:stroke];
    }
    Vertex *vertex = [Vertex new];
    vertex.location = _lastPoint;
    [[_mark lastChild] addMark:vertex];
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    _endPoint = point;
    if (CGPointEqualToPoint(_startPoint, _endPoint)) {
        Dot *dot = [Dot new];
        dot.color = [UIColor blackColor];
        dot.size = 10.0;
        dot.location = _startPoint;
        [_mark addMark:dot];
        [self setNeedsDisplay];
    }
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
