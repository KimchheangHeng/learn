//
//  NSString+swizzing.m
//  MethodSwizzingDemo
//
//  Created by huahuahu on 2017/12/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "NSString+swizzing.h"
#import <objc/runtime.h>

@implementation NSString (swizzing)
- (NSString*)my_lowerCase
{
    //交换后，my_lowerCase 调用的是系统的方法，不会循环调用
    NSString *lowerString = [self my_lowerCase];
    NSLog(@"called swapped lower String");
    return lowerString;
}

+ (void)load
{
    //交换实例方法
    Method raw =  class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swap = class_getInstanceMethod([NSString class], @selector(my_lowerCase));
    method_exchangeImplementations(raw, swap);
    
    //交换类方法
    Method rawClassMethod = class_getClassMethod([NSString class], @selector(stringWithString:));
    Method swappedMethod = class_getClassMethod([NSString class], @selector(myStringWithString:));
    method_exchangeImplementations(rawClassMethod, swappedMethod);
}

+ (instancetype)myStringWithString:(NSString *)string
{
    NSLog(@"called swapped class method");
    return [NSString myStringWithString:string];
}

@end
