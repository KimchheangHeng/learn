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
        NSTimeInterval t  = arc4random_uniform(100)/150;
        [NSThread sleepForTimeInterval:t];

        pthread_mutex_unlock(&mutex);
        if(count>=10)
        {
            //unblock a thread waiting for a condition variable
            pthread_cond_signal(&cond);
        }

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
        NSTimeInterval t  = arc4random_uniform(100)/100;
        [NSThread sleepForTimeInterval:t];

        pthread_mutex_unlock(&mutex);
        if(count>=10)
        {
            pthread_cond_signal(&cond);
        }
    }

    return;
}

void thread3Entry()
{
    while (1)
    {
        pthread_mutex_lock(&mutex);
        //pthread_cond_signal()和pthread_cond_wait()返回之间,有时间差,
        //所以要在判断一次，以免条件不满足
        while(count < 10)
        {
            NSLog(@"wait in %p, count is %@",[NSThread currentThread],@(count));
            //wait on a condition variable
            //阻塞当前线程，等待条件变量cond，并且释放锁mutex。这一系列操作是原子操作
            //其他线程对同一个cond调用pthread_cond_signal或者pthread_cond_broadcast，并且当前线程获得锁之后，当前线程被unblock
            pthread_cond_wait(&cond, &mutex);
        }
        
        NSLog(@"sum is over 10!");
        count=0;
        pthread_mutex_unlock(&mutex);
    }
    

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
