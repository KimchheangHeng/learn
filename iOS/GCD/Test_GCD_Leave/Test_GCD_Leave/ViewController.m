//
//  ViewController.m
//  Test_GCD_Leave
//
//  Created by tigerguo on 2018/1/11.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_group_t group1 = dispatch_group_create();
    dispatch_group_t group2 = dispatch_group_create();
    
    NSLog(@"1,begin");
    if (1)
    {
        [self func1WithGroup:group1];
        dispatch_group_enter(group2);
        dispatch_group_notify(group1, dispatch_get_global_queue(0, 0), ^{
            NSLog(@"6, after group1 clear");
            [self func2WithGroup:group2];
            dispatch_group_leave(group2);
        });
    }
    
    //如果if中是0，那么也会执行，不会阻塞
    //因为group对应的值是0
    dispatch_group_notify(group2, dispatch_get_global_queue(0, 0), ^{
        NSLog(@"9, after group2 clear");
        [self finalFunc:group2];
    });
    NSLog(@"not blocking code ");
}

- (void)func1WithGroup:(dispatch_group_t)group
{
    dispatch_group_enter(group);
    NSLog(@"2,after group1 enter");
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"3,before group1 leave");
        [NSThread sleepForTimeInterval:1];
        dispatch_group_leave(group);
        NSLog(@"5, after group1 leave");

    });
}

- (void)func2WithGroup:(dispatch_group_t)group
{
    dispatch_group_enter(group);
    NSLog(@"7,after group2 enter");
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSThread sleepForTimeInterval:1];
        dispatch_group_leave(group);
        NSLog(@"8, after group2 leave");
    });

}

- (void)finalFunc:(dispatch_group_t)group
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
