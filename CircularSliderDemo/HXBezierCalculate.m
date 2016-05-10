//
//  HXBezierCalculate.m
//  CircularSliderDemo
//
//  Created by miaios on 16/5/9.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import "HXBezierCalculate.h"


@implementation HXBezierCalculate {
    CGPoint  _startPoint;
    CGPoint  _endPoint;
    CGPoint  _controlPoint;
    
    CGFloat  _space;
}

#pragma mark - Singleton Methods
+ (instancetype)instance {
    static HXBezierCalculate *calculate = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        calculate = [HXBezierCalculate new];
    });
    return calculate;
}

+ (instancetype)instanceWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint {
    HXBezierCalculate *calculate = [HXBezierCalculate instance];
    calculate->_startPoint = startPoint;
    calculate->_endPoint = endPoint;
    calculate->_controlPoint = controlPoint;
    calculate->_space = endPoint.x - startPoint.x;
    
    return calculate;
}

#pragma mark - Public Methods
- (CGPoint)pointOnArcWithX:(CGFloat)x {
    CGFloat t = (x / _space);
    CGFloat pointY = (pow((1 - t), 2) * _startPoint.y) + ((2 * t) * (1 - t) * _controlPoint.y) + (pow(t, 2) * _endPoint.y);
    return CGPointMake(x, pointY);
}

@end
