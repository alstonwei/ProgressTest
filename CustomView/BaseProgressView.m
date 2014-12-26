//
//  BaseProgressView.m
//  进度条练习
//
//  Created by Shouqiang Wei on 14/12/17.
//  Copyright (c) 2014年 ShouqiangWei.com. All rights reserved.
//

#import "BaseProgressView.h"

@implementation BaseProgressView

//- (void)drawRect:(CGRect)rect{
//    
//}
-(instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self =[super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.progress = 0.0;
    self.defaultColor = [UIColor blackColor];
    self.progressColor = [UIColor orangeColor];
}

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    //[self performSelectorOnMainThread:@selector(setNeedsDisplay) withObject:self waitUntilDone:YES]
    [self setNeedsDisplay];
}

@end
