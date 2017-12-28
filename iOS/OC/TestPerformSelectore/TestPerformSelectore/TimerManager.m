//
//  Manager.m
//  TestPerformSelectore
//
//  Created by tigerguo on 2017/12/28.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "TimerManager.h"

@interface TimerManager()
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, strong) dispatch_queue_t queue;
@end


@implementation TimerManager
+ (instancetype)shared
{
    static TimerManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[TimerManager alloc] init];        
    });
    return manager;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _queue = dispatch_queue_create("test.tiger", DISPATCH_QUEUE_SERIAL);
        //Timers work in conjunction with run loops
        //这种做法，只会创建timer，不会加到runloop中。
//        _timer = [NSTimer timerWithTimeInterval:5 repeats:YES block:^(NSTimer * _Nonnull timer) {
//            [self ontimeFunc];
//        }];
        
        //这个做法，会把创建一个timer，加到当前runloop 的默认模式
        //create the timer and schedule it on the current run loop in the default mode.
        //这个做法也不好，因为不一定在主线程上。最好在主线程中创建。
//        _timer = [NSTimer scheduledTimerWithTimeInterval:5 repeats:YES block:^(NSTimer * _Nonnull timer) {
//            [self ontimeFunc];
//        }];
        //保证加到了主线程
        dispatch_async(dispatch_get_main_queue(), ^{
            _timer = [NSTimer scheduledTimerWithTimeInterval:5 repeats:YES block:^(NSTimer * _Nonnull timer) {
                [self ontimeFunc];
            }];
        });
        
    }
    
    return self;

}

- (void)ontimeFunc
{
    dispatch_async(self.queue, ^{
        [self test];
    });
}

- (void)test
{
    NSLog(@"called");
}
@end
