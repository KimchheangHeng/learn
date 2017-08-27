//
//  GCDGroupTest.h
//  TestGCD
//
//  Created by huahuahu on 2017/8/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

//GCD 有并发队列机制，可以根据可用的系统资源状况来并发执行任务。
// 开发者可以专注于业务逻辑代码，无需为处理并发事务编写复杂的调度器

#import <Foundation/Foundation.h>

@interface GCDGroupTest : NSObject

+ (void) testGroupNotify;

+ (void) testGroupWait;

+ (void)testGroupMutiQueue;

@end
