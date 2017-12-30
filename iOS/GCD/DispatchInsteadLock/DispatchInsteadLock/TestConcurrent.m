//
//  TestConcurrent.m
//  DispatchInsteadLock
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "TestConcurrent.h"
@interface TestConcurrent()
@property (nonatomic, strong) dispatch_queue_t syncQueue;
@end


@implementation TestConcurrent
//一定要有这句话，因为重写了set和get方法之后，不会默认生成 _someString这ivar了
@synthesize someString = _someString;

- (instancetype)init
{
    if (self = [super init])
    {
        _syncQueue = dispatch_queue_create("com.test.tiger1", DISPATCH_QUEUE_CONCURRENT);
    }
    return self;
}

//因为是并发队列，所以支持多个线程同时读取
- (NSString*)someString
{
    __block NSString *localSomeThing = nil;
    dispatch_sync(_syncQueue, ^{
        localSomeThing = _someString;
    });
    return localSomeThing;
}

- (void)setSomeString:(NSString *)someString
{
//    //这个方法无法保证正确同步。因为读取和写入操作并发执行
//    dispatch_async(_syncQueue, ^{
//        _someString = someString;
//        NSLog(@"done");
//    });
    //使用栅栏块，可以保证写入操作单独执行。
    dispatch_barrier_async(_syncQueue, ^{
        _someString = someString;
        NSLog(@"done");
    });
}

@end
