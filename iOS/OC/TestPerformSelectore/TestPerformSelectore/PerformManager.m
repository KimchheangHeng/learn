//
//  PerformManager.m
//  TestPerformSelectore
//
//  Created by tigerguo on 2017/12/28.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "PerformManager.h"

@interface PerformManager()
@property (nonatomic, strong) dispatch_queue_t queue;
@end


@implementation PerformManager
+ (instancetype)shared
{
    static PerformManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[PerformManager alloc] init];
        
    });
    return manager;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _queue = dispatch_queue_create("test.tiger", DISPATCH_QUEUE_SERIAL);
        
        //这里也应该放到主线程中
//        [self performSelector:@selector(ontimeFunc) withObject:nil afterDelay:5];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self performSelector:@selector(ontimeFunc) withObject:nil afterDelay:5];
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
    NSLog(@"%@ called",NSStringFromClass([self class]));
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    //Invokes a method of the receiver on the current thread using the default mode after a delay.
    //当前是非主线程。5s后，线程已经消失了，就不会被调用了。不能这么用
//    [self performSelector:@selector(ontimeFunc) withObject:nil afterDelay:5];
    
    //要在主线程中调用 performSelector
    dispatch_async(dispatch_get_main_queue(), ^{
        [self performSelector:@selector(ontimeFunc) withObject:nil afterDelay:5];
    });
}
@end

