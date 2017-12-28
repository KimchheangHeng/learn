# NSTimer、performSelector 函数没有被调用的原因  
## performSelector  指定的方法没有被调用  
> Invokes a method of the receiver on the current thread using the default mode after a delay.

根据苹果的文档，`performSelector:withObject:afterDelay:` 在指定时间之后，在**当前线程** 调用一个方法。如果这个线程在指定时间之后不存在了，自然也就不会调用这个方法了。  
一个例子如下：  
声明一个manager，里面有一个串行的队列，并在初始化方法中调用 `performSelector:withObject:afterDelay:`  方法。  

    - (instancetype)init
    {
        if (self = [super init])
        {
            _queue = dispatch_queue_create("test.tiger", DISPATCH_QUEUE_SERIAL);
            [self performSelector:@selector(ontimeFunc) withObject:nil afterDelay:5];
        }
        return self;
    }
    
调用的函数如下：  

    - (void)ontimeFunc
    {
        dispatch_async(self.queue, ^{
            [self test];
        });
    }
    
    - (void)test
    {
        NSLog(@"%@ called",NSStringFromClass([self class]));
        [NSObject cancelPreviousPerformRequestsWithTarget:self];
        //当前是非主线程。5s后，线程已经消失了，就不会被调用了。不能这么用
        [self performSelector:@selector(ontimeFunc) withObject:nil afterDelay:5];        
    }

原本需要实现的目标是每 5s 调用 test函数一次。但是因为 `performSelector:withObject:afterDelay:`是在后台线程调用的，这个线程没有 RunLoop，所以 5s 后，线程已经不存在了，因此 `test` 方法一次都不会被调用。  

这里需要修改的地方有两个：  

1.  在 `init` 方法中，dispatch到主线程执行 `performSelector` 方法。  
2. 在 `test` 方法中，也需要dispatch到主线程执行 `performSelector` 方法。

其实不一定需要到主线程中，只需要 5s 后，线程存在即可。  
## NSTimer 没有被触发  
> Timers work in conjunction with run loops  

Apple 的文档中，第一句话就是定时器和 RunLoop 是联合工作的。定时器必须被加到 RunLoop 中才能被执行。  
创建定时器有两种方法：    

- `scheduledTimerWithTimeInterval:repeats:block:`    
    创建一个定时器，并加到当前 RunLoop 的 default mode 中。
- `timerWithTimeInterval:repeats:block:`  
    只是创建一个定时器，需要手动加到 RunLoop 中。  

因此如果使用第二种方法，对应的代码不会被延迟执行。  
此外，如果在后台队列中创建定时器，可以 dispatch 到主线程中创建，因为后台队列对应的线程很可能会马上消失。  
如果把定时器加入的 mode A，指定时间后，当前 RunLoop 处于 mode B，那么也不会被执行。比如把定时器加到 default mode 下，当 scrollview 滚动时，会处于 UITrackingMode，不会被触发。  
关于 RunLoop 的知识，可以参考苹果文档及底部链接。

## 参考  
- [Demo](https://github.com/huahuahu/learn/tree/master/iOS/OC/TestPerformSelectore)
- [深入理解RunLoop](https://blog.ibireme.com/2015/05/18/runloop/)



