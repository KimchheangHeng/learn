//
//  ViewController.m
//  DispatchInsteadLock
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import "TestSerial.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TestSerial *test = [TestSerial new];
    test.someString = @"da";
    NSString *dd = test.someString;
    NSLog(@"%@",dd);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
