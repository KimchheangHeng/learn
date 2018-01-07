# iOS 各种锁  
## NSCondition  
> A condition object acts as both a lock and a checkpoint in a given thread. The lock protects your code while it tests the condition and performs the task triggered by the condition. The checkpoint behavior requires that the condition be true before the thread proceeds with its task. While the condition is not true, the thread blocks. It remains blocked until another thread signals the condition object.


伪代码如下  

	lock the condition
	while (!(boolean_predicate)) {
	    wait on condition
	}
	do protected work
	(optionally, signal or broadcast the condition again or change a predicate value)
	unlock the condition  
	
> A boolean predicate is an important part of the semantics of using conditions because of the way signaling works. Signaling a condition does not guarantee that the condition itself is true. There are timing issues involved in signaling that may cause false signals to appear. Using a predicate ensures that these spurious signals do not cause you to perform work before it is safe to do so. The predicate itself is simply a flag or other variable in your code that you test in order to acquire a Boolean result.


感觉有点像 `pthread_mutex_t` 和 `pthread_cond_t` 的合体  
> The NSCondition class provides the same semantics as POSIX conditions, but wraps both the required lock and condition data structures in a single object

## NSConditionLock  
> An NSConditionLock object defines a mutex lock that can be locked and unlocked with specific values. You should not confuse this type of lock with a condition (see Conditions). The behavior is somewhat similar to conditions, but is implemented very differently  

大致是说满足某个条件才会获取锁。解锁时，可以把条件置为某个值  
具体见注释  
但是它是怎么实现的呢？不了解




## 参考
- [iOS中保证线程安全的几种方式与性能对比](https://www.jianshu.com/p/938d68ed832c)
- [iOS NSCondition详解](https://www.jianshu.com/p/5d20c15ae690)
