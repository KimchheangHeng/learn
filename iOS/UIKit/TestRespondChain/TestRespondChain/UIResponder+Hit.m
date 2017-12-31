//
//  UIResponder+Hit.m
//  TestRespondChain
//
//  Created by huahuahu on 2017/12/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "UIResponder+Hit.h"
#import <objc/runtime.h>

@implementation UIResponder (Hit)
+ (void)load
{
    Method origin = class_getInstanceMethod([UIView class], @selector(touchesBegan:withEvent:));
    Method custom = class_getInstanceMethod([UIView class], @selector(lxd_touchesBegan:withEvent:));
    method_exchangeImplementations(origin, custom);
    
    origin = class_getInstanceMethod([UIView class], @selector(touchesMoved:withEvent:));
    custom = class_getInstanceMethod([UIView class], @selector(lxd_touchesMoved:withEvent:));
    method_exchangeImplementations(origin, custom);
    
    origin = class_getInstanceMethod([UIView class], @selector(touchesEnded:withEvent:));
    custom = class_getInstanceMethod([UIView class], @selector(lxd_touchesEnded:withEvent:));
    method_exchangeImplementations(origin, custom);
    
    
}


- (void)lxd_touchesBegan:(NSSet *)touches withEvent: (UIEvent *)event
{
    NSLog(@"%@:%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    [self lxd_touchesBegan:touches withEvent:event];
}

- (void)lxd_touchesMoved: (NSSet *)touches withEvent: (UIEvent *)event
{
    NSLog(@"%@:%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    [self lxd_touchesMoved: touches withEvent: event];
}

- (void)lxd_touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event
{
    NSLog(@"%@:%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    [self lxd_touchesEnded: touches withEvent: event];
}


@end
