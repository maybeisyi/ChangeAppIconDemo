//
//  ViewController.m
//  DynamicAppIcon
//
//  Created by daiyi on 2017/5/1.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy) NSArray<NSString *> *weathers;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.weathers = @[@"晴", @"多云", @"小雨", @"大雨", @"雪", @""];
}

- (IBAction)btnAction:(UIButton *)sender {
    NSString *weather = self.weathers[arc4random() % self.weathers.count];
    [self setAppIconWithName:weather];
}

- (void)setAppIconWithName:(NSString *)iconName {
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
        return;
    }
    
    if ([iconName isEqualToString:@""]) {
        iconName = nil;
    }
    [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了 ： %@",error);
        }
    }];
}

@end
