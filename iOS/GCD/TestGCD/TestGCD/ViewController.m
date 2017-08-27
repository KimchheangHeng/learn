//
//  ViewController.m
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import "GCDGroupTest.h"
#import "TestDispatchApply.h"
#import "GCDTargetQueueTest.h"
#import "GCDSemaphoreTEst.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [GCDGroupTest testGroupWait];
//    [GCDGroupTest testGroupNotify];
//    [GCDGroupTest testGroupMutiQueue];
//    [TestDispatchApply test];
//    [GCDTargetQueueTest testTargetQueue];
    [GCDSemaphoreTEst test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testQueueRelease
{
    dispatch_queue_t queue = dispatch_queue_create("com.huahuahu.test",NULL);
    dispatch_async(queue, ^{
        NSLog(@"test");
    });
//    不需要显式地对GCD进行内存管理了
//    dispatch_release(queue);
    
}

@end
