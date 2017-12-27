//
//  ViewController.m
//  NotificationTets
//
//  Created by tigerguo on 2017/12/26.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * const kNotifyName = @"kNotifyName";
    //一个类可以为一个通知注册两个方法。两个方法都会被回调。
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(f1) name:kNotifyName object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(f2) name:kNotifyName object:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:kNotifyName object:nil];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)f1
{
    NSLog(@"f1");
}

- (void)f2
{
    NSLog(@"f2");
}
@end
