//
//  ProgressProtocol.h
//  进度条练习
//
//  Created by Shouqiang Wei on 14/12/18.
//  Copyright (c) 2014年 ShouqiangWei.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProgressProtocol <NSObject>

@property(nonatomic,strong)UIColor *defaultColor;
@property(nonatomic,strong)UIColor *progressColor;
@property(nonatomic,assign)CGFloat progress;

@end
