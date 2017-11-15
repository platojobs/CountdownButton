//
//  UIButton+CountDown.m
//  CountdownButton
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "UIButton+CountDown.h"

@implementation UIButton (CountDown)
- (void)fireWithTime:(NSInteger)timeLine title:(NSString *)title countDownTitle:(NSString *)subTitle mainBGColor:(UIColor *)mColor countBGColor:(UIColor *)cbgcolor mainTextColor:(UIColor *)mtColor countTextColor:(UIColor *)ctcolor{
        // 倒计时时间
        __block NSInteger timeOut = timeLine;
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
        
        // 每秒执行一次
        dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
        dispatch_source_set_event_handler(_timer, ^{
            
            // 倒计时结束，关闭
            if (timeOut <= 0) {
                dispatch_source_cancel(_timer);
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    self.backgroundColor = mColor;
                    [self setTitle:title forState:UIControlStateNormal];
                    [self setTitleColor:mtColor forState:UIControlStateNormal];
                    self.userInteractionEnabled = YES;
                });
                
            } else {
                
                int seconds = timeOut % 60;
                NSString *timeStr = [NSString stringWithFormat:@"%0.2d", seconds];
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.backgroundColor = cbgcolor;
                    [self setTitle:[NSString stringWithFormat:@"%@%@", timeStr, subTitle] forState:UIControlStateNormal];
                    [self setTitleColor:ctcolor forState:UIControlStateNormal];
                    self.userInteractionEnabled = NO;
                });
                
                timeOut--;
            }
        });
        
        dispatch_resume(_timer);    
    
}
@end
