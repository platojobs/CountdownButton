//
//  UIButton+CountDown.h
//  CountdownButton
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CountDown)
/*
 *    倒计时按钮
 *    @param timeLine  倒计时总时间
 *    @param title     还没倒计时的title
 *    @param subTitle  倒计时的子名字 如：时、分
 *    @param mColor    还没倒计时的颜色
 *    @param color     倒计时的颜色
 *    @param mtColor   倒计时以前的字体颜色
 *    @param ctcolor   倒计时以后的字体颜色
 */

- (void)fireWithTime:(NSInteger)timeLine title:(NSString *)title countDownTitle:(NSString *)subTitle mainBGColor:(UIColor *)mColor countBGColor:(UIColor *)cbgcolor mainTextColor:(UIColor *)mtColor countTextColor:(UIColor *)ctcolor;

@end
