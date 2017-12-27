//
//  AutoDict.m
//  MessageForwardDemo
//
//  Created by huahuahu on 2017/12/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "AutoDict.h"
#import <objc/runtime.h>

@interface AutoDict()
@property (nonatomic, strong) NSMutableDictionary *backingStore;
@end

@implementation AutoDict
@dynamic string, number;

- (instancetype)init
{
    if (self = [super init])
    {
        _backingStore = [NSMutableDictionary dictionary];
    }
    return self;
}

//征询接收者所属的类，看其能否动态添加方法
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    NSString *selectorStr = NSStringFromSelector(sel);
    
    if ([selectorStr hasPrefix:@"set"])
    {
        //最后一个参数是方法的“类型编码”。
        //编码开头的字符表示方法的返回值类型，后续字符表示其所接受的各个参数
        class_addMethod(self, sel, (IMP)autoDictSetter,"v@:@");
    }
    else
    {
        // 为某一个类添加方法
        class_addMethod(self, sel, (IMP)autoDictGetter, "@@:");
    }
    return  YES;
}

id autoDictGetter(id self, SEL _cmd)
{
    AutoDict *typedSelf = (AutoDict*)self;
    NSMutableDictionary *dict = typedSelf.backingStore;
    
    NSString *key = NSStringFromSelector(_cmd);
    
    return [dict objectForKey:key];
}

void autoDictSetter(id self, SEL _cmd, id value)
{
    AutoDict *typedSelf = (AutoDict*)self;
    NSMutableDictionary *backingStore = typedSelf.backingStore;

    NSString *selectorStr = NSStringFromSelector(_cmd);
    NSMutableString *key = selectorStr.mutableCopy;
    
    [key deleteCharactersInRange:NSMakeRange(selectorStr.length - 1 , 1)];
    
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    NSString *lowerFirstChar = [[key substringToIndex:1] lowercaseString];
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString:lowerFirstChar];
    
    if (value)
    {
        [backingStore setObject:value forKey:key];
    }
    else
    {
        [backingStore removeObjectForKey:value];
    }
}

//- (id)forwardingTargetForSelector:(SEL)aSelector
//{
//    return  nil;
//
//}
////
//- (void)forwardInvocation:(NSInvocation *)anInvocation
//{
//    NSLog(@"daf");
//}
@end
