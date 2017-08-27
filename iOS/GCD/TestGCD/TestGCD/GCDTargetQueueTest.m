//
//  GCDTargetQueueTest.m
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "GCDTargetQueueTest.h"

@implementation GCDTargetQueueTest

+ (void)testTargetQueue
{
    dispatch_queue_t targetQueue = dispatch_queue_create("com.huahuahu.serialQueue", NULL);
    
    dispatch_queue_t serialQueue1 = dispatch_queue_create("com.huahuahu.seril1", NULL);
    dispatch_queue_t serialQueue2 = dispatch_queue_create("com.huahuahu.seril2", NULL);
    dispatch_queue_t serialQueue3 = dispatch_queue_create("com.huahuahu.seril3", NULL);
    dispatch_queue_t serialQueue4 = dispatch_queue_create("com.huahuahu.seril4", NULL);
    dispatch_queue_t serialQueue5 = dispatch_queue_create("com.huahuahu.seril5", NULL);
    
    //如果isTarget是NO，那么有五个并行的串行队列，对应的block执行的顺序未知。一个可能的输出如下：
//    2017-08-27 11:33:42.591 TestGCD[85123:2966437] serialqueue1
//    2017-08-27 11:33:42.591 TestGCD[85123:2966439] serialqueue3
//    2017-08-27 11:33:42.591 TestGCD[85123:2966455] serialqueue2
//    2017-08-27 11:33:42.591 TestGCD[85123:2966436] serialqueue4
//    2017-08-27 11:33:42.591 TestGCD[85123:2966454] serialqueue5
    // 如果isTarget是YES，那么这五个queue对应的block就不是并行的了，输出用于如下：
//    2017-08-27 11:35:44.062 TestGCD[85184:2969796] serialqueue1
//    2017-08-27 11:35:44.062 TestGCD[85184:2969796] serialqueue2
//    2017-08-27 11:35:44.062 TestGCD[85184:2969796] serialqueue3
//    2017-08-27 11:35:44.062 TestGCD[85184:2969796] serialqueue4
//    2017-08-27 11:35:44.062 TestGCD[85184:2969796] serialqueue5
    const BOOL isTarget = NO;
    if (isTarget)
    {
        dispatch_set_target_queue(serialQueue1, targetQueue);
        dispatch_set_target_queue(serialQueue2, targetQueue);
        dispatch_set_target_queue(serialQueue3, targetQueue);
        dispatch_set_target_queue(serialQueue4, targetQueue);
        dispatch_set_target_queue(serialQueue5, targetQueue);
    }
    
    dispatch_async(serialQueue1, ^{
        NSLog(@"serialqueue1");
    });
    
    dispatch_async(serialQueue2, ^{
        NSLog(@"serialqueue2");
    });
    
    dispatch_async(serialQueue3, ^{
        NSLog(@"serialqueue3");
    });
    
    dispatch_async(serialQueue4, ^{
        NSLog(@"serialqueue4");
    });
    
    dispatch_async(serialQueue5, ^{
        NSLog(@"serialqueue5");
    });
}

@end
