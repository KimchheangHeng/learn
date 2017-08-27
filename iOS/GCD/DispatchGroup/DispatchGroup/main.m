//
//  main.m
//  DispatchGroup
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import <Foundation/Foundation.h>


void testDispatchGroup()
{
    NSArray *array = @[@1,@2,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    //创建一个group
    dispatch_group_t dispatchGroup = dispatch_group_create();
    
    for (NSNumber *number in array)
    {
        dispatch_group_async(dispatchGroup, queue, ^{
            NSLog(@"number is %@",number);
        });
        
    }
//    dispatch_group_wait(dispatchGroup, DISPATCH_TIME_FOREVER);
    dispatch_group_notify(dispatchGroup, dispatch_get_main_queue(), ^{
    NSLog(@"all group done");
    });
    NSLog(@"all aysn");
    
    for (int i = 0; i < 100; i++)
    {
        NSLog(@"fd");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        testDispatchGroup();
    }
    return 0;
}

