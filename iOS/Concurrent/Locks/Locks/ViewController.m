//
//  ViewController.m
//  Locks
//
//  Created by tigerguo on 2018/1/2.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"
#import <pthread.h>
#import <os/lock.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self testsynchronized];
//    [self test_dispatch_semaphore];
//    [self test_nslock];
//    [self test_recursive_lock];
    [self test_nscondition_lock];
//    [self test_condition];
//    [self test_pthread_mutex];
//    [self test_pthread_mutex_recursive];
//    [self test_spin_lock];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testsynchronized
{
    //不需要在代码中显式的创建锁对象，便可以实现锁的机制
    //会隐式的添加一个异常处理例程来保护代码，该处理例程会在异常抛出的时候自动的释放互斥锁。
    NSObject *obj = [[NSObject alloc] init];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        @synchronized(obj) {
            NSLog(@"需要线程同步的操作1 开始");
            sleep(3);
            NSLog(@"需要线程同步的操作1 结束");
        }
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(1);
        @synchronized(obj) {
            NSLog(@"需要线程同步的操作2");
        }
    });
    
}

- (void)test_dispatch_semaphore
{
    //Passing a value less than zero will  cause NULL to be returned.
    dispatch_semaphore_t signal = dispatch_semaphore_create(1);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        dispatch_time_t overTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
        dispatch_semaphore_wait(signal, overTime);
        NSLog(@"需要线程同步的操作1 开始");
//        sleep(2);
        NSLog(@"需要线程同步的操作1 结束");
        dispatch_semaphore_signal(signal);
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(1);
        //zero on success, or non-zero if the timeout occurred.
        dispatch_time_t overTime = dispatch_time(DISPATCH_TIME_NOW, 1.1 * NSEC_PER_SEC);
        long result =  dispatch_semaphore_wait(signal, overTime);
        if (result == 0)
        {
            NSLog(@"success");
        }
        else
        {
            NSLog(@"fail");
        }
        NSLog(@"需要线程同步的操作2");
        dispatch_semaphore_signal(signal);
    });
    
}

- (void)test_nslock
{
    NSLock *lock = [[NSLock alloc] init];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //[lock lock];
        [lock lockBeforeDate:[NSDate date]];
        NSLog(@"需要线程同步的操作1 开始");
        sleep(2);
        NSLog(@"需要线程同步的操作1 结束");
        [lock unlock];
        
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(1);
        if ([lock tryLock]) {//尝试获取锁，如果获取不到返回NO，不会阻塞该线程
            NSLog(@"锁可用的操作");
            [lock unlock];
        }else{
            NSLog(@"锁不可用的操作");
        }
        
        NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceNow:3];
        if ([lock lockBeforeDate:date]) {//尝试在未来的3s内获取锁，并阻塞该线程，如果3s内获取不到恢复线程, 返回NO,不会阻塞该线程
            NSLog(@"没有超时，获得锁");
            [lock unlock];
        }else{
            NSLog(@"超时，没有获得锁");
        }
        
    });
    
}


/**
 递归锁
 */
- (void)test_recursive_lock
{
    //使用这个锁，会死锁
//    NSLock *lock = [[NSLock alloc] init];
    NSRecursiveLock *lock = [[NSRecursiveLock alloc] init];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        static void (^RecursiveMethod)(int);
        
        RecursiveMethod = ^(int value) {
            
            [lock lock];
            if (value > 0) {
                
                NSLog(@"value = %d", value);
                sleep(1);
                RecursiveMethod(value - 1);
            }
            [lock unlock];
        };
        
        RecursiveMethod(5);
    });
    
}

//知道怎么做了，但是不了解怎么实现的
- (void)test_nscondition_lock
{
    NSConditionLock *lock  = [[NSConditionLock alloc] init];
    NSMutableArray *products = [NSMutableArray array];
    
    NSInteger HAS_DATA = 1;
    NSInteger NO_DATA = 0;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (1) {
            //condition默认是0，所以先进这里
            //condition 是NO_DATA，才会继续进行
            [lock lockWhenCondition:NO_DATA];
            [products addObject:[[NSObject alloc] init]];
            NSLog(@"produce a product,总量:%zi",products.count);
            //把condition变成HAS_DATA
            [lock unlockWithCondition:HAS_DATA];
            sleep(1);
        }
        
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (1) {
            NSLog(@"wait for product");
            //condition是HAS_DATA，才会继续运行
            [lock lockWhenCondition:HAS_DATA];
            [products removeObjectAtIndex:0];
            NSLog(@"custome a product");
            //把condition变成NO_DATA
            [lock unlockWithCondition:NO_DATA];
        }
        
    });
    
}

//对pthread_mutex_t和pthread_cond_t 的封装
//NSCondition 的对象实际上作为一个锁和一个线程检查器：锁主要为了当检测条件时保护数据源，执行条件引发的任务；线程检查器主要是根据条件决定是否继续运行线程，即线程是否被阻塞。
- (void)test_condition
{
    NSCondition *condition = [[NSCondition alloc] init];
    
    NSMutableArray *products = [NSMutableArray array];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (1) {
            [condition lock];
            //这里要用while，避免虚假唤醒
            //Signaling a condition does not guarantee that the condition itself is true. There are timing issues involved in signaling that may cause false signals to appear
            while ([products count] == 0) {
                NSLog(@"wait for product");
                [condition wait];//让当前线程处于等待状态
            }
            [products removeObjectAtIndex:0];
            NSLog(@"custome a product");
            [condition unlock];
        }
        
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (1) {
            [condition lock];
            [products addObject:[[NSObject alloc] init]];
            NSLog(@"produce a product,总量:%zi",products.count);
            [condition signal];
            [condition unlock];
            sleep(1);
        }
        
    });
}

- (void)test_pthread_mutex
{
    __block BOOL readyToGo = NO;
    __block pthread_mutex_t mutex;
    __block pthread_cond_t condition;
    __block count = 0;
    

    pthread_mutex_init(&mutex, NULL);
    pthread_cond_init(&condition, NULL);

    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (YES) {
            pthread_mutex_lock(&mutex);
            while (!readyToGo) {
                pthread_cond_wait(&condition, &mutex);
            }
            count--;
            
            NSLog(@"consume,%@",@(count));
            
            readyToGo = NO;
            pthread_mutex_unlock(&mutex);
        }

    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        while (YES) {
            pthread_mutex_lock(&mutex);
            readyToGo = YES;
            count++;
            NSLog(@"produce,%@",@(count));
            pthread_cond_signal(&condition);
            pthread_mutex_unlock(&mutex);
        }

    });
    
}

- (void)test_pthread_mutex_recursive
{
    __block pthread_mutex_t theLock;
    //pthread_mutex_init(&theLock, NULL);
    
    pthread_mutexattr_t attr;
    pthread_mutexattr_init(&attr);
    pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);
    pthread_mutex_init(&theLock, &attr);
    pthread_mutexattr_destroy(&attr);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        static void (^RecursiveMethod)(int);
        
        RecursiveMethod = ^(int value) {
            
            pthread_mutex_lock(&theLock);
            if (value > 0) {
                
                NSLog(@"value = %d", value);
                sleep(1);
                RecursiveMethod(value - 1);
            }
            pthread_mutex_unlock(&theLock);
        };
        
        RecursiveMethod(5);
    });
    
}

- (void)test_spin_lock
{
//    os_unfair_lock_t unfairLock;
//    unfairLock = &(OS_UNFAIR_LOCK_INIT);
//
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        os_unfair_lock_lock(unfairLock);
//        NSLog(@"需要线程同步的操作1 开始");
//        sleep(3);
//        NSLog(@"需要线程同步的操作1 结束");
//        os_unfair_lock_unlock(unfairLock);
//
//    });
//
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        os_unfair_lock_lock(unfairLock);
//        sleep(1);
//        NSLog(@"需要线程同步的操作2");
//        os_unfair_lock_unlock(unfairLock);
//
//    });

}

@end


