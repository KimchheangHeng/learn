//
//  main.m
//  TestConditionVariable
//
//  Created by huahuahu on 2018/1/4.
//  Copyright © 2018年 huahuahu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <pthread.h>

static NSInteger count = 0;
pthread_mutex_t mutex;
pthread_cond_t cond;



void thread1Entry()
{
    while (1)
    {
        pthread_mutex_lock(&mutex);
        count++;
        NSLog(@"in %p, count is %@",[NSThread currentThread],@(count));
        pthread_mutex_unlock(&mutex);
        if(count>=10)
        {
            pthread_cond_signal(&cond);
        }

        NSTimeInterval t  = arc4random_uniform(100)/150;
        [NSThread sleepForTimeInterval:t];
    }

    return;
}

void thread2Entry()
{
    while (1)
    {
        pthread_mutex_lock(&mutex);
        count++;
        NSLog(@"in %p, count is %@",[NSThread currentThread],@(count));
        pthread_mutex_unlock(&mutex);
        if(count>=10)
        {
            pthread_cond_signal(&cond);
        }
        NSTimeInterval t  = arc4random_uniform(100)/100;
        [NSThread sleepForTimeInterval:t];
    }

    return;
}

void thread3Entry()
{
    pthread_mutex_lock(&mutex);
    while(count < 10)
    {
        NSLog(@"wait in %p, count is %@",[NSThread currentThread],@(count));
        pthread_cond_wait(&cond, &mutex);
    }
    
    printf("sum is over 10!");
    count=0;
    pthread_mutex_unlock(&mutex);
    

    return;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //参数attr指定了新建互斥锁的属性。如果参数attr为NULL，则使用默认的互斥锁属性 。
        //不同的锁类型在试图对一个已经被锁定的互斥锁加锁时表现不同。
        pthread_mutex_init(&mutex, NULL);
        //创建一个条件变量
        pthread_cond_init(&cond, NULL);
        
        //线程1
        NSThread *t1 = [[NSThread alloc] initWithBlock:^{
            thread1Entry();
        }];
        [t1 start];
        //线程2
        NSThread *t2 = [[NSThread alloc] initWithBlock:^{
            thread2Entry();
        }];
        [t2 start];
        //线程3
        NSThread *t3 = [[NSThread alloc] initWithBlock:^{
            thread3Entry();
        }];
        [t3 start];
        
        [[NSRunLoop currentRunLoop] addPort:[NSPort port] forMode:NSRunLoopCommonModes];
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate distantFuture]];

    }
    return 0;
}
