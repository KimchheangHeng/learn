## 多线程：条件变量使用的两个注意事项

> 条件变量是一种同步机制，允许线程挂起，直到共享数据上的某些条件得到满足。条件变量上的基本操作有：触发条件(当条件变为 true 时)；等待条件，挂起线程直到其他线程触发条件    


1. while ()为什么是while而不是if?  
	因为可能会有虚假唤醒的问题。  
	>"This means that when you wait on a condition variable, the wait may (occasionally) return when no thread specifically broadcast or signaled that condition variable. Spurious wakeups may sound strange, but on some multiprocessor systems, making condition wakeup completely predictable might substantially slow all condition variable operations. The race conditions that cause spurious wakeups should be considered rare."



2. `pthread_cond_signal`和`pthread_mutex_unlock`的调用顺序是否可以交换  
	不可以  
	不必考虑性能损耗
	> 在Linux线程调度实现中，有两个队列，分别是`cond_wait`队列和`mutex_lock`队列， `pthread_cond_signal`只是让线程从`cond_wait`队列移到`mutex_lock`队列，并没有真正的执行线程切换，没有性能消耗。在iOS里面也是推荐`pthread_cond_signal`在`pthread_mutex_unlock`之前调用的    

	有可能锁被其他线程获取


## 参考
- [线程同步：何时互斥锁不够，还需要条件变量?](http://www.blogjava.net/fhtdy2004/archive/2009/07/05/285519.html)
- [Linux 线程同步---条件变量](http://blog.csdn.net/hiflower/article/details/2195350)
- [条件变量signal与unlock的顺序](https://www.cnblogs.com/Tour/p/4170839.html)
- [ 条件变量的虚假唤醒(spurious wakeups)问题](http://blog.csdn.net/leeds1993/article/details/52738845)
- [Why does pthread_cond_wait have spurious wakeups?](https://stackoverflow.com/questions/8594591/why-does-pthread-cond-wait-have-spurious-wakeups)
- [Spurious wakeup](https://en.wikipedia.org/wiki/Spurious_wakeup)
- [demo](https://github.com/huahuahu/learn/tree/master/iOS/Concurrent/TestConditionVariable)