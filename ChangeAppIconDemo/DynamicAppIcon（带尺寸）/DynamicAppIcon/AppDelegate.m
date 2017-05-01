//
//  AppDelegate.m
//  DynamicAppIcon
//
//  Created by daiyi on 2017/5/1.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge | UIUserNotificationTypeSound categories:nil]];
    
    return YES;
}


@end
