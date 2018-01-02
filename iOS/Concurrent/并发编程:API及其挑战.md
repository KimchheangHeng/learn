# 并发编程：API 及挑战
## 线程
>线程（thread）是组成进程的子单元，操作系统的调度器可以对线程进行单独的调度。      
>所有的并发编程 API 都是构建于线程之上的 —— 包括 GCD 和操作队列（operation queues）
>
>直接使用线程可能会引发的一个问题是，如果你的代码和所基于的框架代码都创建自己的线程时，那么活动的线程数量有可能以指数级增长    
> 使用线程并不是没有代价的，每个线程都会消耗一些内存和内核资源  
> 
> GCD 和 operation queue 。它们通过集中管理一个被大家协同使用的线程池，来解决上面遇到的问题。

## Operation Queues
>从本质上来看，操作队列的性能比 GCD 要低那么一点，不过，大多数情况下这点负面影响可以忽略不计，操作队列是并发编程的首选工具。

## 资源饥饿（Starvation）

> In this situation, a thread that is waiting to acquire a write lock can be starved by more read locks occurring in the meantime.  

即写锁等待读锁。可以通过  read-copy-update 算法或者给定一个 writer preference。

## 优先级反转
 优先级反转是指程序在运行时低优先级的任务阻塞了高优先级的任务，有效的反转了任务的优先级。  
>  高优先级和低优先级的任务之间共享资源时，就可能发生优先级反转。

![](http://oda58fqub.bkt.clouddn.com/15149368561741.png)  

上面是一个例子  
如何解决？  
> 通常就是不要使用不同的优先级  
> 通常最后你都会以让高优先级的代码等待低优先级的代码来解决问题。当你使用 GCD 时，总是使用默认的优先级队列（直接使用，或者作为目标队列）。如果你使用不同的优先级，很可能实际情况会让事情变得更糟糕。




## 参考  
- [并发编程：API 及挑战](https://www.objccn.io/issue-2-1/)


