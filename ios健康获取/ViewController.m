//
//  ViewController.m
//  ios健康获取
//
//  Created by iMac-1 on 2018/3/22.
//  Copyright © 2018年 iOS_阿玮. All rights reserved.
//

#import "ViewController.h"
#import "AWHealthKitManage.h"

@interface ViewController ()

/**
 步数
 */
@property (weak, nonatomic) IBOutlet UILabel *theyCount;

/**
 距离
 */
@property (weak, nonatomic) IBOutlet UILabel *distance;

/**
 时间
 */
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

/**
 步数获取

 @param sender 点击的按钮
 */
- (IBAction)theyCountClick:(UIButton *)sender {
    
    AWHealthKitManage *manage = [AWHealthKitManage shareInstance];
    [manage authorizeHealthKit:^(BOOL success, NSError *error) {
        
        if (success) {
            NSLog(@"success");
            [manage getStepCount:^(double value, NSError *error) {
                NSLog(@"1count-->%.0f", value);
                NSLog(@"1error-->%@", error.localizedDescription);
                dispatch_async(dispatch_get_main_queue(), ^{
                    _theyCount.text = [NSString stringWithFormat:@"%.0f步", value];
                });
                
            }];
        }
        else {
            NSLog(@"fail");
        }
    }];
    
}

/**
 距离获取
 
 @param sender 点击的按钮
 */
- (IBAction)distanceClick:(UIButton *)sender {
    
    AWHealthKitManage *manage = [AWHealthKitManage shareInstance];
    [manage authorizeHealthKit:^(BOOL success, NSError *error) {
        
        if (success) {
            NSLog(@"success");
            [manage getDistance:^(double value, NSError *error) {
                NSLog(@"2count-->%.2f", value);
                NSLog(@"2error-->%@", error.localizedDescription);
                dispatch_async(dispatch_get_main_queue(), ^{
                    _distance.text = [NSString stringWithFormat:@"%.2f公里", value];
                });
                
            }];
        }
        else {
            NSLog(@"fail");
        }
    }];

}

/**
 运动时间获取
 
 @param sender 点击的按钮
 */
- (IBAction)timeClick:(UIButton *)sender {
    
    AWHealthKitManage *manage = [AWHealthKitManage shareInstance];
    [manage authorizeHealthKit:^(BOOL success, NSError *error) {
        
        if (success) {
            NSLog(@"success");
            [manage getTime:^(double value, NSError *error) {
                NSLog(@"2count-->%.2f", value);
                NSLog(@"2error-->%@", error.localizedDescription);
                dispatch_async(dispatch_get_main_queue(), ^{
                    _timeLabel.text = [NSString stringWithFormat:@"运动时间：%.0f分钟", value];
                });
                
            }];
        }
        else {
            NSLog(@"fail");
        }
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
