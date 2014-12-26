//
//  BaseProgressView.h
//  进度条练习
//
//  Created by Shouqiang Wei on 14/12/17.
//  Copyright (c) 2014年 ShouqiangWei.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProgressProtocol.h"


@interface BaseProgressView : UIView<ProgressProtocol>

@property(nonatomic,strong)UIColor *defaultColor;
@property(nonatomic,strong)UIColor *progressColor;
@property(nonatomic,assign)CGFloat progress;

@end
