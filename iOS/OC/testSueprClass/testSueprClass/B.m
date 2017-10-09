//
//  B.m
//  testSueprClass
//
//  Created by tigerguo on 2017/9/25.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "B.h"

@implementation B

- (void)method1
{
    NSLog(@"self is %@, cmd is %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    [super method2];
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
