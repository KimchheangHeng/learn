//
//  Manager.m
//  ZombieTest
//
//  Created by tigerguo on 2018/2/2.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "Manager.h"

NSString * const kNotify = @"kNotify";


@implementation Manager
- (instancetype)init
{
    if (self = [super init])
    {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(onNotify:)
                                                     name:kNotify
                                                   object:nil];
    }
    return self;
}

- (void)onNotify:(NSNotification*)notify
{
    NSLog(@"got notify");
}
@end
