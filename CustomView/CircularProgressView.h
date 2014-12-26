//
//  CIrcularProgressView.h
//  进度条练习
//
//  Created by Shouqiang Wei on 14/12/17.
//  Copyright (c) 2014年 ShouqiangWei.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseProgressView.h"

@interface CircularProgressView : BaseProgressView

@property(assign) CGFloat lineWidth;
@property(assign) CGFloat progressWidth;
@property(assign,nonatomic,readonly) CGFloat startAngle;
@property(assign,readonly) CGFloat endAngle;

@end
