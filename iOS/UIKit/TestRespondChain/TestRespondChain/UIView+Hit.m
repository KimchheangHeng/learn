//
//  UIView+Hit.m
//  TestRespondChain
//
//  Created by huahuahu on 2017/12/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "UIView+Hit.h"
#import <objc/runtime.h>
@implementation UIView (Hit)

+ (void)load
{
    Method origin = class_getInstanceMethod([UIView class], @selector(hitTest:withEvent:));
    Method custom = class_getInstanceMethod([UIView class], @selector(lxd_hitTest:withEvent:));
    method_exchangeImplementations(origin, custom);

    origin = class_getInstanceMethod([UIView class], @selector(pointInside:withEvent:));
    custom = class_getInstanceMethod([UIView class], @selector(lxd_pointInside:withEvent:));
    method_exchangeImplementations(origin, custom);
}

- (UIView*)lxd_hitTest:(CGPoint)point withEvent:(UIEvent *)event;
{
    NSLog(@"%@:%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    UIView *result =  [self lxd_hitTest:point withEvent:event];
//    NSLog(@"result is %@",[result class]);
    return result;
}

- (BOOL)lxd_pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%@:%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    return [self lxd_pointInside:point withEvent:event];
}


@end
