//
//  TestGroup.m
//  DispatchGroup
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "TestGroup.h"
@interface TestGroup()
@property (nonatomic, strong) NSArray<NSNumber*> *low;
@property (nonatomic, strong) NSArray<NSNumber*> *high;
@end

@implementation TestGroup

- (instancetype)init
{
    if (self = [super init])
    {
        const NSUInteger kCount = 1000;
        NSMutableArray *rawLow = [NSMutableArray array];
        NSMutableArray *rawHigh = [NSMutableArray array];
        for (NSUInteger i = 0; i < kCount; i++)
        {
            [rawLow addObject:@(i)];
            [rawHigh addObject:@(10000+i)];
        }
        _low = rawLow.copy;
        _high = rawHigh.copy;
    }
    return self;
}

- (void)test
{
    dispatch_queue_t lowQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
    dispatch_queue_t highQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    //创建一个group
    dispatch_group_t dispatchGroup = dispatch_group_create();
    
    for (NSNumber *number in self.low)
    {
        //把这些队列上的block都归宿到这个group中
        dispatch_group_async(dispatchGroup, lowQueue, ^{
            [NSThread sleepForTimeInterval:0.01];
            NSLog(@"%@",number);
        });
    }
    
    for (NSNumber *number in self.high)
    {
        //把这些队列上的block都归宿到这个group中
        dispatch_group_async(dispatchGroup, highQueue, ^{
            [NSThread sleepForTimeInterval:0.01];
            NSLog(@"%@",number);
        });
    }
    
    dispatch_queue_t notify_queue = dispatch_get_main_queue();
//    //当所有的dispatchGroup 上的东西都做完之后，在notify_queue上执行block中的东西
//    //不会阻塞队列
//    dispatch_group_notify(dispatchGroup, notify_queue, ^{
//        NSLog(@"啊啊啊啊 all Done");
//    });
    //会等待dispatchGroup结束，或者第二个参数的时间过后，阻塞
    dispatch_group_wait(dispatchGroup, DISPATCH_TIME_FOREVER);
    NSLog(@"啊啊啊啊 here");
    
    
    
}
@end
