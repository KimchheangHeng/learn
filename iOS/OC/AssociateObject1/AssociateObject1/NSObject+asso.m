//
//  NSObject+asso.m
//  AssociateObject1
//
//  Created by huahuahu on 2017/12/26.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "NSObject+asso.h"
#import <objc/runtime.h>

@implementation NSObject (asso)
//下面这句可有可不有
@dynamic myAssociatedObject;

- (void)setMyAssociatedObject:(id)object
{
    //第二个参数要求是常量、唯一，selector完美满足
    objc_setAssociatedObject(self, @selector(myAssociatedObject), object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)myAssociatedObject {
    return objc_getAssociatedObject(self, @selector(myAssociatedObject));
}

@end
