//
//  EnumSet.m
//  TestEnum
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "EnumSet.h"
@interface EnumSet()
@property (nonatomic, strong) NSSet *set;
@end

@implementation EnumSet
+ (instancetype)shared
{
    static EnumSet *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [EnumSet new];
    });
    return manager;
}

- (instancetype)init
{
    if (self = [super init])
    {
        NSMutableSet *rawSet = [NSMutableSet set];
        for (int i = 0; i < 1000; i ++)
        {
            [rawSet addObject:@(i)];
        }
        _set = rawSet.copy;
        
    }
    return self;
}

- (void)test
{
//        [self forIter];
//        [self testEnum];
//        [self testReverseEnum];
        [self testFaseEnum];
//    [self usingBlock];
}

//for 循环
- (void)forIter
{
    NSUInteger count = self.set.count;
    NSArray *setArray = self.set.allObjects;
    for (NSUInteger i = 0 ; i < count; i++)
    {
        NSLog(@"%@",setArray[i]);
    }
}

//NSEnumerator
- (void)testEnum
{
    NSEnumerator *enumerator = [self.set objectEnumerator];
    NSNumber *obj = nil;
    while (nil != (obj = enumerator.nextObject))
    {
        NSLog(@"%@",obj);
    }
}

//反向遍历
- (void)testReverseEnum
{
    //set 没有顺序，所以无法反向遍历
}

//这个语法最快，最有效
- (void)testFaseEnum
{
    for (NSNumber *number in self.set)
    {
        NSLog(@"%@",number);
    }
}

//可以获取下标，可以选取参数，比如并发、反向(这里反向没有意义)
- (void)usingBlock
{
    [self.set enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@",obj);
    }];
}

@end
