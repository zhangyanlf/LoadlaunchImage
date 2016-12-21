//
//  AppDelegate.m
//  LoadlaunchImage
//
//  Created by apple on 16/12/21.
//  Copyright © 2016年 zhangyanlin. All rights reserved.
//

#import "AppDelegate.h"
#import "LoadlaunchImageView.h"
#import "TestViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /* FullScreenAdType 全屏广告
     * LogoAdType 带logo的广告类似网易广告，值得注意的是启动图片必须带logo图
     * ImgUrl  图片url
     
    LoadlaunchImageView * adView = [[LoadlaunchImageView alloc]initWithWindow:self.window andType:LogoAdType andImgUrl:@"http://img4.duitang.com/uploads/item/201510/12/20151012201352_3t4UF.thumb.224_0.jpeg"];
    */
    /* FullScreenAdType 全屏广告
     * LogoAdType 带logo的广告类似网易广告，值得注意的是启动图片必须带logo图
     * localAdImgName  本地图片名字
     */
        LoadlaunchImageView * adView = [[LoadlaunchImageView alloc]initWithWindow:self.window andType:LogoAdType andImgUrl:nil];
        adView.localAdImgName = @"qidong.png";
    
    //各种回调
    adView.clickBlock = ^(NSInteger tag){
        switch (tag) {
            case 1100:{
                NSLog(@"点击广告回调");
                TestViewController *vc = [[TestViewController alloc]init];
                vc.view.backgroundColor = [UIColor whiteColor];
                [self.window.rootViewController presentViewController:vc animated:YES completion:^{
                    
                }];
            }
                break;
            case 1101:
                NSLog(@"点击跳过回调");
                break;
            case 1102:
                NSLog(@"倒计时完成后的回调");
                break;
            default:
                break;
        }
        
    };
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
