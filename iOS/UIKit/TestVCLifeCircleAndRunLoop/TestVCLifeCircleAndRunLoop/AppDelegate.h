//
//  AppDelegate.h
//  TestVCLifeCircleAndRunLoop
//
//  Created by tigerguo on 2018/2/7.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, assign, readwrite) NSUInteger currentrunloopCount;


@end

