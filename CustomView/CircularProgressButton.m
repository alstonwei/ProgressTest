//
//  CircularProgressButton.m
//  进度条练习
//
//  Created by Shouqiang Wei on 14/12/18.
//  Copyright (c) 2014年 ShouqiangWei.com. All rights reserved.
//

#import "CircularProgressButton.h"

@implementation CircularProgressButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupCircular];
    }
    return  self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self =[super initWithFrame:frame];
    if (self) {
        [self setupCircular];
    }
    return self;
}

-(void)setupCircular
{
    self.progress = 0.0;
    self.defaultColor = [UIColor blackColor];
    self.progressColor = [UIColor orangeColor];
    self.startAngle = -M_PI_2 ;
    self.lineWidth =2;
}

- (void)setStartAngle:(CGFloat)startAngle
{
    if (startAngle>M_PI || startAngle <-M_PI)
    {
        startAngle = M_PI;
    }
    _startAngle = startAngle;
    if (_startAngle >0) {
        _endAngle = 1.5*M_PI - _startAngle;
    };
}


-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    [self setNeedsDisplay];
    NSLog(@"progress : %f",_progress);
}

- (void)drawRect:(CGRect)rect {
    if (!self.backgroundColor) {
        self.backgroundColor = [UIColor whiteColor];
        
    }
    
    CGContextRef context =  UIGraphicsGetCurrentContext();
    [self.backgroundColor setFill];
    CGContextFillRect(context, rect);
    
    CGFloat redius = (CGRectGetWidth(self.bounds) - self.lineWidth) / 2;
    CGPoint center = {CGRectGetWidth(self.frame)*0.5,CGRectGetHeight(self.frame)*0.5};
    //draw background circle
    UIBezierPath *backCircle = [UIBezierPath bezierPathWithArcCenter:center
                                                              radius:redius
                                                          startAngle:(CGFloat) - M_PI_2
                                                            endAngle:(CGFloat)(1.5 * M_PI)
                                                           clockwise:YES];
    [self.defaultColor setStroke];
    backCircle.lineWidth = self.lineWidth;
    [backCircle stroke];
    
    if (self.progress) {
        if (!self.progressWidth) {
            self.progressWidth = self.lineWidth;
        }
        
        UIBezierPath *progressCircle = [UIBezierPath bezierPathWithArcCenter:center
                                                                      radius:redius
                                                                  startAngle:(CGFloat) - M_PI_2
                                                                    endAngle:(CGFloat)(- M_PI_2 + self.progress * 2 * M_PI)
                                                                   clockwise:YES];
        [self.progressColor setStroke];
        progressCircle.lineWidth = self.progressWidth;
        [progressCircle stroke];
    }
}


@end
