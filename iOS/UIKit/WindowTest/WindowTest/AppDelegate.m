//
//  AppDelegate.m
//  WindowTest
//
//  Created by huahuahu on 2018/1/13.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewControllerWindow1.h"

@interface AppDelegate ()

@property (nonnull,nonatomic,strong) ViewController *vc;
@property (nonatomic,strong) UIWindow *secondWindow;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ViewController *vc = [ViewController new];
    
    UIWindow *window1 = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window1.rootViewController = vc;
    [window1 makeKeyAndVisible];
    self.window = window1;
    self.vc = vc;
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    view1.backgroundColor = [UIColor redColor];
    [vc.view addSubview:view1];
    [self nextWindow];
    return YES;
}

- (void)nextWindow
{
    UIWindow *window1 = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window1.windowLevel = UIWindowLevelStatusBar + 2;
    ViewControllerWindow1 *vc = [ViewControllerWindow1 new];
    window1.rootViewController = vc;
    window1.hidden = NO;
    
//    [window1 makeKeyAndVisible];
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 400, 100, 100)];
    view1.backgroundColor = [UIColor blueColor];
    [window1 addSubview:view1];

    //window1 一定要被本类持有
    self.secondWindow = window1;
    self.secondWindow = nil;
    [self addNewView];

//    [UIView animateWithDuration:0.3 animations:^{
//        self.secondWindow.alpha = 0;
//    } completion:^(BOOL finished) {
//        self.secondWindow = nil;
//        [self addNewView];
//    }];
}

- (void)addNewView
{
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(200, 300, 100, 100)];
    view1.backgroundColor = [UIColor orangeColor];
    [self.vc.view addSubview:view1];

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
