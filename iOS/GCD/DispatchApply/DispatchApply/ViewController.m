//
//  ViewController.m
//  DispatchApply
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
//    [self testApply];
    [self testApplyAndMain];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testApply
{
    NSArray *array = @[@1,@2,@3,@4,@5];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    //This function waits for the task block to complete before returning
    dispatch_apply(5, queue, ^(size_t index) {
        NSLog(@"%@",array[index]);
    });
    //之前所有的一定已经执行完了
    NSLog(@"done");
    
    
}

//在async中非同步执行apply
- (void)testApplyAndMain
{
    NSArray *array = @[@1,@2,@3,@4,@5];
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_SERIAL);

    dispatch_async(queue, ^{
        //因为是并行队列，所以不会crash
        dispatch_apply([array count], queue, ^(size_t i) {
            NSLog(@"%@",array[i]);
        });
        NSLog(@"done");
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"main done;");
        });
        NSLog(@"really done");
    });
}


@end
