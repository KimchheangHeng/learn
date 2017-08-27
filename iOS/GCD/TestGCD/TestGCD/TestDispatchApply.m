//
//  TestDispatchApply.m
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "TestDispatchApply.h"

@implementation TestDispatchApply

+ (void)test
{
    NSUInteger iterNum = 100;
    //可以作为 for 循环的一个并行替代
    //会阻塞当前线程
    dispatch_apply(iterNum, dispatch_get_global_queue(0, 0), ^(size_t i) {
        NSLog(@"i is %@, current thread is %@",@(i),[NSThread currentThread]);
    });
}

@end
