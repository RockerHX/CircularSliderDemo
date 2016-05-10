//
//  HXBezierCalculate.h
//  CircularSliderDemo
//
//  Created by miaios on 16/5/9.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HXBezierCalculate : NSObject

+ (instancetype)instance;
+ (instancetype)instanceWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint;

- (CGPoint)pointOnArcWithX:(CGFloat)x;

@end
