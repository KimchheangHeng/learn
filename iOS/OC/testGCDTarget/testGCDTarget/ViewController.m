//
//  ViewController.m
//  testGCDTarget
//
//  Created by tigerguo on 2017/12/7.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (nonatomic, strong) NSThread *workThread;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_queue_t queueTarget = dispatch_queue_create("target", DISPATCH_QUEUE_SERIAL);
//    dispatch_queue_t queueTarget = dispatch_get_global_queue(0, 0);
    dispatch_queue_t queue1      = dispatch_queue_create_with_target("queue1", DISPATCH_QUEUE_SERIAL, queueTarget);
    dispatch_queue_t queue2      = dispatch_queue_create_with_target("queue2", DISPATCH_QUEUE_SERIAL, queueTarget);

    dispatch_queue_t queue3      = dispatch_queue_create_with_target("queue3", DISPATCH_QUEUE_SERIAL, queueTarget);
    dispatch_queue_t queue4      = dispatch_queue_create_with_target("queue4", DISPATCH_QUEUE_SERIAL, queueTarget);
    dispatch_queue_t queue5      = dispatch_queue_create_with_target("queue5", DISPATCH_QUEUE_SERIAL, queueTarget);
//
//    dispatch_queue_t queue1      = dispatch_queue_create("queue1", DISPATCH_QUEUE_SERIAL);
//    dispatch_queue_t queue2      = dispatch_queue_create("queue2", DISPATCH_QUEUE_SERIAL);
//
//    dispatch_queue_t queue3      = dispatch_queue_create("queue3", DISPATCH_QUEUE_SERIAL);
//    dispatch_queue_t queue4      = dispatch_queue_create("queue4", DISPATCH_QUEUE_SERIAL);
//    dispatch_queue_t queue5      = dispatch_queue_create("queue5", DISPATCH_QUEUE_SERIAL);

    
    dispatch_async(queue1, ^{
        [self funcWithID:@"queue1"];
    });
    
//    dispatch_async(queue2, ^{
//        [self funcWithID:@"queue2"];
//    });
//    dispatch_async(queue3, ^{
//        [self funcWithID:@"queue3"];
//    });
//    dispatch_async(queue4, ^{
//        [self funcWithID:@"queue4"];
//    });
    dispatch_sync(queue5, ^{
        [self funcWithID:@"queue5"];
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)funcWithID:(NSString*)str
{
    NSLog(@"%@ begin thread is %@",str, [NSThread currentThread]);
    [NSThread sleepForTimeInterval:4];
    NSLog(@"%@ end thread is %@",str, [NSThread currentThread]);
}

@end
