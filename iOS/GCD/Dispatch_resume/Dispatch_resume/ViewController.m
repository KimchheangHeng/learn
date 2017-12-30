//
//  ViewController.m
//  Dispatch_resume
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test
{
    dispatch_queue_t queue = dispatch_queue_create("com.test.gcd", DISPATCH_QUEUE_SERIAL);
    //提交第一个block，延时5秒打印。
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:5];
        NSLog(@"五秒后打印，队列挂起时已经开始执行，");
    });
    //提交第二个block，也是延时5秒打印
    dispatch_async(queue, ^{
        [NSThread sleepForTimeInterval:5];
        NSLog(@"队列挂起时未执行，需恢复队列后在执行");
    });
    //延时一秒
    NSLog(@"立刻打印~~~~~~~");
    [NSThread sleepForTimeInterval:1];
    //挂起队列
    NSLog(@"一秒后打印，队列挂起");
    dispatch_suspend(queue);
    //延时10秒
    [NSThread sleepForTimeInterval:10];
    NSLog(@"十秒后打印，开启队列");
    //恢复队列
    dispatch_resume(queue);
    
}

@end
