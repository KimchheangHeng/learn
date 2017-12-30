//
//  EnumArray.m
//  TestEnum
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "EnumArray.h"
@interface EnumArray()
@property (nonatomic, strong) NSArray *array;
@end

@implementation EnumArray
+ (instancetype)shared
{
    static EnumArray *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [EnumArray new];
    });
    return manager;
}

- (instancetype)init
{
    if (self = [super init])
    {
        NSMutableArray *rawArray = [NSMutableArray array];
        for (int i = 0; i < 1000; i ++)
        {
            [rawArray addObject:@(i)];
        }
        _array = rawArray.copy;
        
    }
    return self;
}

- (void)test
{
    [self forIter];
//    [self testEnum];
//    [self testReverseEnum];
//    [self testFaseEnum];
//    [self usingBlock];
}

//for 循环
- (void)forIter
{
    NSUInteger count = self.array.count;
    for (NSUInteger i = 0 ; i < count; i++)
    {
        NSLog(@"%@",self.array[i]);
    }
}

//NSEnumerator
- (void)testEnum
{
    NSEnumerator *enumerator = [self.array objectEnumerator];
    NSNumber *obj = nil;
    while (nil != (obj = enumerator.nextObject))
    {
        NSLog(@"%@",obj);
    }
}

//反向遍历
- (void)testReverseEnum
{
    NSEnumerator *enumerator = [self.array reverseObjectEnumerator];
    NSNumber *obj = nil;
    while (nil != (obj = enumerator.nextObject))
    {
        NSLog(@"%@",obj);
    }
}

//这个语法最快，最有效
- (void)testFaseEnum
{
    for (NSNumber *number in self.array)
    {
        NSLog(@"%@",number);
    }
}

//可以获取下标，可以选取参数，比如并发、反向
- (void)usingBlock
{
//    [self.array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"%@",obj);
//    }];
    [self.array enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%@",obj);
    }];
}

@end
