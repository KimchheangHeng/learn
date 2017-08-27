//
//  GCDSemaphoreTEst.m
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "GCDSemaphoreTEst.h"

@implementation GCDSemaphoreTEst


+ (void)test
{
    [self right];
}

//这函数会异常结束
+ (void)wrong
{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    NSMutableArray *array = [NSMutableArray array];
    
    NSUInteger max = 10000;
    for (int i = 0; i<max; i++)
    {
        dispatch_async(queue, ^{
            [array addObject:@(i)];
        });
    }
}

+ (void)right
{
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    //创建一个dispatch_semaphore_t，并把值设为1
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(1);
    
    NSMutableArray *array = [NSMutableArray array];
    
    NSUInteger max = 10000;
    for (int i = 0; i<max; i++)
    {
        dispatch_async(queue, ^{
            //一直等待，直至semaphore的计数值大于等于1
            //然后把semaphore的值减去1，返回
            dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
            [array addObject:@(i)];
            //排他控制结束，把semaphore的计数值加1
            //如果有通过dispatch_semaphore_wait函数等待semaphore计数值增加的线程，那么由最先等待的线程执行
            dispatch_semaphore_signal(semaphore);
        });
    }
    NSLog(@"array is %@",array);
}

@end
