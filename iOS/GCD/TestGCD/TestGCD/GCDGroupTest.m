//
//  GCDGroupTest.m
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "GCDGroupTest.h"

@implementation GCDGroupTest

+ (void) testGroupNotify
{
    NSArray *array = @[@1,@2,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    //创建一个group
    dispatch_group_t dispatchGroup = dispatch_group_create();
    
    for (NSNumber *number in array)
    {
        dispatch_group_async(dispatchGroup, queue, ^{
            NSLog(@"number is %@",number);
        });
        
    }
    //dispatch group中的任务执行完成之后，块会在特定线程中执行。不会阻塞当前线程
    dispatch_group_notify(dispatchGroup, dispatch_get_main_queue(), ^{
        NSLog(@"all group  task done");
    });
    NSLog(@"all task async to group");
    
}

+ (void)testGroupWait
{
    
    NSArray *array = @[@1,@2,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    //创建一个group
    dispatch_group_t dispatchGroup = dispatch_group_create();
    
    for (NSNumber *number in array)
    {
        // 异步地把任务编组到这group中
        dispatch_group_async(dispatchGroup, queue, ^{
            NSLog(@"number is %@",number);
        });
        
    }
    //阻塞当前线程，直到group 中的所有任务都已完成
    dispatch_group_wait(dispatchGroup, DISPATCH_TIME_FOREVER);
    
    NSLog(@"all group done");
    
}

//可以把任务分配在不同队列中，同时把所有任务归入同一个 dispatch group
+ (void)testGroupMutiQueue
{
    dispatch_group_t dispatchGroup = dispatch_group_create();
    dispatch_queue_t lowQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    dispatch_queue_t highQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    NSArray *lowArray = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    NSArray *highArray = @[@9,@9,@9,@9,@9,@9,@9,@9,@9,@9,@9,@9,@9,@9,@9];
    
    for (NSNumber *number in lowArray)
    {
        dispatch_group_async(dispatchGroup, lowQueue, ^{
            NSLog(@"lowqueue ,number is %@",number);
        });
    }
    
    for (NSNumber *number in highArray)
    {
        dispatch_group_async(dispatchGroup, highQueue, ^{
            NSLog(@"highqueue, number is %@",number);
        });
    }
    
    dispatch_group_notify(dispatchGroup, dispatch_get_main_queue(), ^{
        NSLog(@"all queue task done");
    });
    
}

@end
