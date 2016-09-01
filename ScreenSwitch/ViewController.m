//
//  ViewController.m
//  ScreenSwitch
//
//  Created by 123 on 16/9/1.
//  Copyright © 2016年 123. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) UILabel * label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label=[[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-300)/2, ([UIScreen mainScreen].bounds.size.height-200)/2, 300, 200)];
    self.label.text=@"判断当前屏幕是横屏还是竖屏(适配)";
    self.label.backgroundColor=[UIColor greenColor];
    self.label.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:self.label];
}

//判断当前屏幕是横屏还是竖屏
//每变换一次frame值都要重新设置一次
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {
    switch (interfaceOrientation) {
        case UIInterfaceOrientationPortrait:
            //home健在下
            NSLog(@"下w==%f,h==%f",[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
            self.label.frame=CGRectMake(([UIScreen mainScreen].bounds.size.width-300)/2, ([UIScreen mainScreen].bounds.size.height-200)/2, 300, 200);
            break;
        case UIInterfaceOrientationPortraitUpsideDown:
            //home健在上
            NSLog(@"上w==%f,h==%f",[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
            self.label.frame=CGRectMake(([UIScreen mainScreen].bounds.size.width-300)/2, ([UIScreen mainScreen].bounds.size.height-200)/2, 300, 200);
            break;
        case UIInterfaceOrientationLandscapeLeft:
            //home健在左
            NSLog(@"左w==%f,h==%f",[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
            self.label.frame=CGRectMake(([UIScreen mainScreen].bounds.size.width-300)/2, ([UIScreen mainScreen].bounds.size.height-200)/2, 300, 200);
            break;
        case UIInterfaceOrientationLandscapeRight:
            //home健在右
            NSLog(@"右w==%f,h==%f",[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
            self.label.frame=CGRectMake(([UIScreen mainScreen].bounds.size.width-300)/2, ([UIScreen mainScreen].bounds.size.height-200)/2, 300, 200);
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
