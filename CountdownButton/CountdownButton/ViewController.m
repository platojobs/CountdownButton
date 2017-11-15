//
//  ViewController.m
//  CountdownButton
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+CountDown.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *bt;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.bt fireWithTime:0 title:@"获取验证码" countDownTitle:@"秒" mainBGColor:[UIColor whiteColor ] countBGColor:[UIColor whiteColor ] mainTextColor:[UIColor blackColor ] countTextColor:[UIColor redColor ]];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)cilck:(id)sender{
    
    [sender fireWithTime:30 title:@"获取验证码" countDownTitle:@"秒" mainBGColor:[UIColor whiteColor ] countBGColor:[UIColor whiteColor ] mainTextColor:[UIColor blackColor ] countTextColor:[UIColor redColor ]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
