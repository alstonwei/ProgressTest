//
//  CircularProgressButton.h
//  进度条练习
//
//  Created by Shouqiang Wei on 14/12/18.
//  Copyright (c) 2014年 ShouqiangWei.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgressProtocol.h"

@interface CircularProgressButton : UIButton<ProgressProtocol>

@property(nonatomic,strong)UIColor *defaultColor;
@property(nonatomic,strong)UIColor *progressColor;
@property(nonatomic,assign)CGFloat progress;

@property(assign) CGFloat lineWidth;
@property(assign) CGFloat progressWidth;
@property(assign,nonatomic,readonly) CGFloat startAngle;
@property(assign,readonly) CGFloat endAngle;

@end
