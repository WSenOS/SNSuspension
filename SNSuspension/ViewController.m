//
//  ViewController.m
//  SNSuspension
//
//  Created by wangsen on 2017/4/20.
//  Copyright © 2017年 wangsen. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+SNSuspension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)globalBtnAction:(UIButton *)btn {
    NSLog(@"ViewController %@",[self class]);
}


@end
