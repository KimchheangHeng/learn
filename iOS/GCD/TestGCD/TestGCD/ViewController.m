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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [GCDGroupTest testGroupWait];
//    [GCDGroupTest testGroupNotify];
//    [GCDGroupTest testGroupMutiQueue];
    [TestDispatchApply test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
