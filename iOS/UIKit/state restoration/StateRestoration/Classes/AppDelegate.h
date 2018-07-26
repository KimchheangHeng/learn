/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The application delegate class used for installing the window and navigation controller.
 */

@import UIKit;

@interface AppDelegate : NSObject <UIApplicationDelegate>

// App delegate must implement the window @property from UIApplicationDelegate @protocol to use a main storyboard file.
@property (strong, nonatomic) UIWindow *window;

@end
