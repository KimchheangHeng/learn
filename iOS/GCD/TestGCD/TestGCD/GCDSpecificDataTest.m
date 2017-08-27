//
//  GCDSpecificDataTest.m
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "GCDSpecificDataTest.h"

@implementation GCDSpecificDataTest

//dispatch_get_current_queue()的替代方法
+ (void)test
{
    
    dispatch_queue_t queueA = dispatch_queue_create("com.huahuahu.a", NULL);
    dispatch_queue_t queueB = dispatch_queue_create("com.huahuahu.b", NULL);
    dispatch_set_target_queue(queueB, queueA);
    
    static int kQueueSpecific;
    CFStringRef queueSpecificValue = CFSTR("queueA");
    dispatch_queue_set_specific(queueA, &kQueueSpecific, (void*)queueSpecificValue, (dispatch_function_t)CFRelease);
    
    dispatch_sync(queueB, ^{
        dispatch_block_t block = ^{
            NSLog(@"No deadlock!");
        };
        
        CFStringRef retrievedValue = dispatch_get_specific(&kQueueSpecific);
        if (retrievedValue)
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
