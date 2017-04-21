//
//  ViewController3.m
//  SNSuspension
//
//  Created by wangsen on 2017/4/20.
//  Copyright © 2017年 wangsen. All rights reserved.
//

#import "ViewController3.h"
#import "UIViewController+SNSuspension.h"
@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)globalBtnAction:(UIButton *)btn {
    NSLog(@"ViewController3 %@",[self class]);
}

@end
