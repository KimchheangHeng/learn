//
//  Test.m
//  Dispatch_current
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

//判断当前队列
//dispatch_get_current_queue();   Deprecated
#import "Test.h"

@implementation Test

- (instancetype)init
{
    if (self = [super init])
    {
        
    }
    return self;
}

- (void)test
{
    //A的目标队列是全局队列
    dispatch_queue_t queueA = dispatch_queue_create("queueA", DISPATCH_QUEUE_CONCURRENT);
    //B的目标队列是A
    dispatch_queue_t queueB = dispatch_queue_create_with_target("queueB", DISPATCH_QUEUE_CONCURRENT,queueA);
    
    static int kQueueSpecific;
    CFStringRef queueSpecificValue = CFSTR("queueA");
    //向队列A设置一个“队列特有数据”
    //通常第二个参数是一个静态指针
    dispatch_queue_set_specific(queueA, &kQueueSpecific, (void*)queueSpecificValue, (dispatch_function_t)CFRelease);
    
    dispatch_sync(queueB, ^{
        dispatch_block_t block = ^{NSLog(@"no deadlock");};
        //这个函数，获取队列的特有数据。如果根据指定的键找不到关联数据，那么会沿着层级体系向上查找
        //直到找到数据或者到达根队列为止
        CFStringRef retrivedValue = dispatch_get_specific(&kQueueSpecific);
        
        //这里dispatch_get_current_queue 是 queueB
        //如果调用dispatch_sync(queueA, block)，会死锁。因为A是B的目标队列
        if (kCFCompareEqualTo == CFStringCompare(retrivedValue, queueSpecificValue, 0))
        {
            block();
        }
        else
        {
            dispatch_sync(queueA, block);
        }
    });
    
}
@end
