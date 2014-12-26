//
//  ViewController.m
//  进度条练习
//
//  Created by Shouqiang Wei on 14/12/17.
//  Copyright (c) 2014年 ShouqiangWei.com. All rights reserved.
//

#import "ViewController.h"
#import "CircularProgressView.h"
#import "ProgressProtocol.h"
#import "CircularProgressButton.h"


@interface ViewController ()
{
    CGFloat _progress;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _progress = 0.0f;
    NSLog(@"您点击了第几行＝＝＝%@",_number);
    [self testCircularProgressButton];
}

-(void)testCircularProgressButton
{
    
    CircularProgressButton* circular = [[CircularProgressButton alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), CGRectGetWidth(self.view.frame))];
    [circular setImage:[UIImage imageNamed:@"play"] forState:UIControlStateNormal];
    [circular setImage:[UIImage imageNamed:@"stop"] forState:UIControlStateSelected];
    [circular addTarget:self action:@selector(btnCircularProgressButtonClicked:) forControlEvents:UIControlEventAllEvents];
    
    circular.lineWidth = 20;
    circular.backgroundColor =  [UIColor colorWithRed:236.0 / 255.0
                                                green:236.0 / 255.0
                                                 blue:236.0 / 255.0
                                                alpha:1.0];
    [self.view addSubview:circular];
}
-(void)btnCircularProgressButtonClicked:(id)sender
{
    UIButton* btn = sender;
    [btn setSelected:YES];
    [self performSelector:@selector(draw:) withObject:sender afterDelay:2];
}

-(void)testCircularProgressView
{
    CircularProgressView* circular = [[CircularProgressView alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), CGRectGetWidth(self.view.frame))];
    
    circular.lineWidth = 20;
    circular.backgroundColor =  [UIColor colorWithRed:236.0 / 255.0
                                                green:236.0 / 255.0
                                                 blue:236.0 / 255.0
                                                alpha:1.0];
    [self.view addSubview:circular];
    [self performSelector:@selector(draw:) withObject:circular afterDelay:2];
}
- (void)draw:(id <ProgressProtocol>) obj
{
    _progress +=0.01;
    [obj setProgress:_progress];
    if (_progress>=1) {
        _progress = 0.0f;
        [self performSelector:@selector(draw:) withObject:obj afterDelay:2];
    }else
    {
        [self performSelector:@selector(draw:) withObject:obj afterDelay:0.5];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
