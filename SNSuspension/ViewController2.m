//
//  ViewController2.m
//  SNSuspension
//
//  Created by wangsen on 2017/4/20.
//  Copyright © 2017年 wangsen. All rights reserved.
//

#import "ViewController2.h"
#import "UIViewController+SNSuspension.h"
@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)globalBtnAction:(UIButton *)btn {
    NSLog(@"ViewController2 %@",[self class]);
}

@end
