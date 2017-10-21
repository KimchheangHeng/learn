//
//  A.m
//  testSueprClass
//
//  Created by tigerguo on 2017/9/25.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "A.h"

@implementation A

- (void)method1
{
    NSLog(@"self is %@, cmd is %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)method2
{
    NSLog(@"self is %@, cmd is %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    [self method1];
}

- (void)method3
{
    NSLog(@"self is %@, cmd is %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
