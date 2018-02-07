//
//  ViewController.m
//  TestVCLifeCircleAndRunLoop
//
//  Created by tigerguo on 2018/2/7.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loadView
{
    [super loadView];
    [self addRunloopObserver];
    NSLog(@"currentRunLoop %@ in %@",@(self.currentrunloopCount),NSStringFromSelector(_cmd));
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"currentRunLoop %@ in %@",@(self.currentrunloopCount),NSStringFromSelector(_cmd));

}

- (void)addRunloopObserver
{
    CFRunLoopObserverRef obser=  CFRunLoopObserverCreateWithHandler(kCFAllocatorDefault, kCFRunLoopBeforeWaiting|kCFRunLoopAfterWaiting, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
        if (activity == kCFRunLoopBeforeWaiting)
        {
            NSLog(@"in runloop task, count is %@",@(self.currentrunloopCount));
        }
        else if (activity == kCFRunLoopAfterWaiting)
        {
            self.currentrunloopCount++;
        }
    });
    
    CFRunLoopAddObserver([[NSRunLoop mainRunLoop] getCFRunLoop], obser, kCFRunLoopCommonModes);
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"currentRunLoop %@ in %@",@(self.currentrunloopCount),NSStringFromSelector(_cmd));

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"currentRunLoop %@ in %@",@(self.currentrunloopCount),NSStringFromSelector(_cmd));

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentNewVC:(id)sender {
    TestViewController *testVC = [TestViewController new];
    testVC.presentingVC = self;
    [self presentViewController:testVC animated:YES completion:nil];
}

@end
