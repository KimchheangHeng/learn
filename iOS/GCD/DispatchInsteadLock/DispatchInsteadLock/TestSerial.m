//
//  Test.m
//  DispatchInsteadLock
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//
//所有的加锁任务都在 GCD 中处理，GCD 是在相当深的底层实现的，可以做许多优化

#import "TestSerial.h"

@interface TestSerial()
@property (nonatomic, strong) dispatch_queue_t syncQueue;
@end

@implementation TestSerial
//一定要有这句话，因为重写了set和get方法之后，不会默认生成 _someString这ivar了
@synthesize someString = _someString;

- (instancetype)init
{
    if (self = [super init])
    {
        _syncQueue = dispatch_queue_create("com.test.tiger", DISPATCH_QUEUE_SERIAL);
    }
    return self;
}

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
//    //下面这个方法是同步设置。
//    dispatch_sync(_syncQueue, ^{
//        _someString = someThing;
//    });
    //下面这个方法是异步设置
    //这方法比同步要慢，因为异步派发操作，需要拷贝block
    dispatch_async(_syncQueue, ^{
        _someString = someString;
        NSLog(@"done");
    });
}
@end
