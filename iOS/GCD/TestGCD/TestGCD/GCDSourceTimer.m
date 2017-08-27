//
//  GCDSourceTimer.m
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "GCDSourceTimer.h"

@implementation GCDSourceTimer

+ (void)test
{
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
    
    
    //10s 之后的要给闹铃，只有一次
    dispatch_source_set_timer(timer, dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC), DISPATCH_TIME_FOREVER, 1ull * NSEC_PER_SEC);
    
    dispatch_source_set_event_handler(timer, ^{
        NSLog(@"timer!");
        dispatch_source_cancel(timer);
    });
    
    dispatch_source_set_cancel_handler(timer, ^{
        NSLog(@"canceled!");
    });
    
    NSLog(@"timer resume");
    dispatch_resume(timer);
}

@end
