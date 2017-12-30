//
//  EnumDict.m
//  TestEnum
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "EnumDict.h"
@interface EnumDict()
@property (nonatomic, strong) NSDictionary *dict;
@end

@implementation EnumDict
+ (instancetype)shared
{
    static EnumDict *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [EnumDict new];
    });
    return manager;
}

- (instancetype)init
{
    if (self = [super init])
    {
        NSMutableDictionary *rawDict = [NSMutableDictionary dictionary];
        for (int i = 0; i < 1000; i ++)
        {
            [rawDict setObject:@(i)  forKey:[@(i) stringValue]];
        }
        _dict = rawDict.copy;
        
    }
    return self;
}

- (void)test
{
//    [self forIter];
//    [self testEnum];
//    [self testReverseEnum];
//    [self testFaseEnum];
    [self usingBlock];
}

//for 循环
- (void)forIter
{
    NSUInteger count = self.dict.count;
    NSArray *setArray = self.dict.allKeys;
    for (NSUInteger i = 0 ; i < count; i++)
    {
        NSLog(@"%@:%@",setArray[i],self.dict[setArray[i]]);
    }
}

//NSEnumerator
- (void)testEnum
{
    NSEnumerator *enumerator = [self.dict keyEnumerator];
    NSNumber *obj = nil;
    while (nil != (obj = enumerator.nextObject))
    {
        NSLog(@"%@:%@",obj,self.dict[obj]);
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
    for (NSString *key in self.dict)
    {
        NSLog(@"%@:%@",key,self.dict[key]);
    }
}

//可以获取下标，可以选取参数，比如并发、反向(这里反向没有意义)
- (void)usingBlock
{
    [self.dict enumerateKeysAndObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@:%@",key,obj);
    }];
}

@end
