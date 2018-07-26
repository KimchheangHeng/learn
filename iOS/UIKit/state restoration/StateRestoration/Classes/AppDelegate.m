/*
 Copyright (C) 2017 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The application delegate class used for installing the window and navigation controller.
 */

#import "AppDelegate.h"
#import "DataSource.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // place all initialization code here that needs to be called "before" state restoration occurs
    //
    
    // At launch time, the system automatically loads your app’s main storyboard file and
    // loads the initial view controller. For apps that support state restoration, the state
    // restoration machinery restores your interface to its previous state between calls to the
    // application:willFinishLaunchingWithOptions: and application:didFinishLaunchingWithOptions: methods.
    // Use the application:willFinishLaunchingWithOptions: method to show your app window and to determine
    // if state restoration should happen at all. Use the application:didFinishLaunchingWithOptions: method
    // to make any final adjustments to your app’s user interface.

    // require the window being visible before state restoration
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // note that this delegate is called before state restoration
    //
    [[DataSource sharedInstance] save];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // place all code that should occur "after" state restoration occurs (like password entry login, etc.)
    //
    return YES;
}

// identify we are interested in storing application state, this is called when the app
// is suspended to the background
//
- (BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder
{
    return YES;
}

// identify we are interested in re-storing application state,
// this is called when the app is re-launched
//
- (BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder
{
    return YES;
}


#pragma mark - Restoration

// store data not necessarily related to the user interface,
// this is called when the app is suspended to the background
//
- (void)application:(UIApplication *)application willEncodeRestorableStateWithCoder:(NSCoder *)coder
{
    // encode any state at the app delegate level
}

// reload data not necessarily related to the user interface,
// this is called when the app is re-launched
//
- (void)application:(UIApplication *)application didDecodeRestorableStateWithCoder:(NSCoder *)coder
{
    // decode any state at the app delegate level
    //
    // if you plan to do any asynchronous initialization for restoration -
    // Use these methods to inform the system that state restoration is occuring
    // asynchronously after the application has processed its restoration archive on launch.
    // In the event of a crash, the system will be able to detect that it may have been
    // caused by a bad restoration archive and arrange to ignore it on a subsequent application launch.
    //
    [[UIApplication sharedApplication] extendStateRestoration];
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(globalQueue, ^{
        
        // do any additional asynchronous initialization work here...
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            // done asynchronously initializing, complete our state restoration
            //
            [[UIApplication sharedApplication] completeStateRestoration];
        });
    });
    
    // if you ever want to check for restore bundle version of user interface idiom, use this code:
    //
    //ask for the restoration version (used in case we have multiple versions of the app with varying UIs)
    // String with value of info.plist's Bundle Version (app version) when state was last saved for the app
    //
    NSString *restoreBundleVersion = [coder decodeObjectForKey:UIApplicationStateRestorationBundleVersionKey];
    NSLog(@"Restore bundle version = %@", restoreBundleVersion);
    
    // ask for the restoration idiom (used in case user ran used to run an iPhone version but now running on an iPad)
    // NSNumber containing the UIUSerInterfaceIdiom enum value of the app that saved state
    //
    NSNumber *restoreUserInterfaceIdiom = [coder decodeObjectForKey:UIApplicationStateRestorationUserInterfaceIdiomKey];
    NSLog(@"Restore User Interface Idiom = %ld", (long)restoreUserInterfaceIdiom.integerValue);
}

/*
 note: if you don't assign a restoration class to each view controller,
 here we need to implement "viewControllerWithRestorationIdentifierPath"
*/
// creating a new view controller during restoration
/*
+ (UIViewController *)viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder
{
    //..
}
*/

@end
