//
//  UIViewController+SNSuspension.m
//  SNSuspension
//
//  Created by wangsen on 2017/4/20.
//  Copyright © 2017年 wangsen. All rights reserved.
//

#import "UIViewController+SNSuspension.h"
#import <objc/runtime.h>

@interface __CustomButton : UIButton
@end

@implementation __CustomButton
@end

@implementation UIViewController (SNSuspension)

+ (void)load {
    Method nmethod2 = class_getInstanceMethod(self, @selector(sn_viewWillAppear:));
    Method omethod2 = class_getInstanceMethod(self, @selector(viewWillAppear:));
    method_exchangeImplementations(omethod2, nmethod2);
}

- (void)sn_viewWillAppear:(BOOL)animation {
    [self sn_viewWillAppear:animation];
    [self __globalButton];
}

- (void)__globalButton {
    NSMutableArray<__CustomButton *>* tempArray = [NSMutableArray array];
    [[UIApplication sharedApplication].keyWindow.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[__CustomButton class]]) {
            [tempArray addObject:obj];
        }
    }];
    CGRect globalBtnFrame = tempArray.lastObject.frame;
    if (!tempArray.count) {
        globalBtnFrame = CGRectMake(100, 100, 100, 100);
    }
    [tempArray enumerateObjectsUsingBlock:^(__CustomButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
    __CustomButton * globalBtn = [__CustomButton buttonWithType:UIButtonTypeCustom];;
    globalBtn.backgroundColor = [UIColor blueColor];
    globalBtn.frame = globalBtnFrame;
    [globalBtn addTarget:self action:@selector(globalBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    [[UIApplication sharedApplication].keyWindow addSubview:globalBtn];
}

- (void)globalBtnAction:(UIButton *)btn {
    NSLog(@"%@",[self class]);
}

@end
