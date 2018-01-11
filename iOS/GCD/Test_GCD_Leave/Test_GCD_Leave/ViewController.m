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
    // Do any additional setup after loading the view, typically from a nib.
    dispatch_group_t group1 = dispatch_group_create();
    dispatch_group_t group2 = dispatch_group_create();

    if (1)
    {
        [self func1WithGroup:group1];
        dispatch_group_enter(group2);
        dispatch_group_notify(group1, dispatch_get_main_queue(), ^{
            [self func2WithGroup:group2];
            dispatch_group_leave(group2);
        });

    }
    //如果if中是0，那么也会执行，不会阻塞
    //因为group对应的值是0
    dispatch_group_notify(group2, dispatch_get_main_queue(), ^{
        [self finalFunc:group2];
    });
}

- (void)func1WithGroup:(dispatch_group_t)group
{
    [NSThread detachNewThreadWithBlock:^{
        [[NSRunLoop currentRunLoop] addPort:[NSPort port] forMode:NSRunLoopCommonModes];
        NSLog(@"%@",[NSThread currentThread]);
        [NSThread sleepForTimeInterval:2];
        dispatch_group_enter(group);
        dispatch_group_leave(group);

    }];
    dispatch_group_enter(group);
    dispatch_group_leave(group);

//    dispatch_group_async(group, dispatch_get_main_queue(), ^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"%@",NSStringFromSelector(_cmd));
//        dispatch_group_leave(group);
//    });
}

- (void)func2WithGroup:(dispatch_group_t)group
{
    dispatch_group_enter(group);
    dispatch_group_async(group, dispatch_get_main_queue(), ^{
        NSLog(@"%@",NSStringFromSelector(_cmd));
        dispatch_group_leave(group);
        NSLog(@"%@",[NSThread currentThread]);

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
