# 底层并发 API
## 延后执行
另外一个需要注意的事情就是，当人们使用 dispatch_after 去处理他们代码中存在的时序 bug 时，会存在一些有问题的倾向。一些代码执行的过早而你很可能不知道为什么会这样，所以你把这段代码放到了 dispatch_after 中，现在一切运行正常了。但是几周以后，之前的工作不起作用了。由于你并不十分清楚你自己代码的执行次序，调试代码就变成了一场噩梦。
## 队列
  队列和功能点同时解决了一个连续不断的扇出的问题：  
  GCD 通过创建所谓的线程池来大致匹配 CPU 内核数量  
  如果你的代码阻塞了许多线程，这会带来很大的问题。首先，线程消耗资源，此外，创建线程会变得代价高昂。创建过程需要一些时间。并且在这段时间中，GCD 无法以全速来完成功能点。有不少能够导致线程阻塞的情况，但是最常见的情况与 I/O 有关，也就是从文件或者网络中读写数据。正是因为这些原因，你不应该在GCD队列中以阻塞的方式来做这些操作。  
  
## 优先级
 你可以通过设置目标队列为一个全局队列来改变自己队列的优先级，但是你应该克制这么做的冲动。    
 在大多数情况下，改变优先级不会使事情照你预想的方向运行。一些看起简单的事情实际上是一个非常复杂的问题。你很容易会碰到一个叫做优先级反转的情况。  
## 单一资源的多读单写  
所有计划好的 block 完成之后，并且在所有它后面的 block 运行之前。  
## 锁竞争
 你应该从直接复杂层次中隔离开。当你发现了性能下降，这明显表明代码中存在设计问题。这里有两个开销需要你来平衡。第一个是独占临界区资源太久的开销，以至于别的线程都因为进入临界区的操作而阻塞。第二个是太频繁出入临界区的开销。在 GCD 的世界里，第一种开销的情况就是一个 block 在隔离队列中运行，它可能潜在的阻塞了其他将要在这个隔离队列中运行的代码。第二种开销对应的就是调用 dispatch_async 和 dispatch_sync 。无论再怎么优化，这两个操作都不是无代价的。

## 事件源
GCD 有一个较少人知道的特性：事件源 dispatch_source_t。  
GCD 事件源是以极其资源高效的方式实现的。

### 监视进程  

	NSRunningApplication *mail = [NSRunningApplication 
	  runningApplicationsWithBundleIdentifier:@"com.apple.mail"];
	if (mail == nil) {
	    return;
	}
	pid_t const pid = mail.processIdentifier;
	self.source = dispatch_source_create(DISPATCH_SOURCE_TYPE_PROC, pid, 
	  DISPATCH_PROC_EXIT, DISPATCH_TARGET_QUEUE_DEFAULT);
	dispatch_source_set_event_handler(self.source, ^(){
	    NSLog(@"Mail quit.");
	});
	dispatch_resume(self.source);  

当 Mail.app 退出的时候，这个程序会打印出 Mail quit.。

### 监视文件
    
    NSURL *directoryURL; // assume this is set to a directory
	int const fd = open([[directoryURL path] fileSystemRepresentation], O_EVTONLY);
	if (fd < 0) {
	    char buffer[80];
	    strerror_r(errno, buffer, sizeof(buffer));
	    NSLog(@"Unable to open \"%@\": %s (%d)", [directoryURL path], buffer, errno);
	    return;
	}
	dispatch_source_t source = dispatch_source_create(DISPATCH_SOURCE_TYPE_VNODE, fd, 
	  DISPATCH_VNODE_WRITE | DISPATCH_VNODE_DELETE, DISPATCH_TARGET_QUEUE_DEFAULT);
	dispatch_source_set_event_handler(source, ^(){
	    unsigned long const data = dispatch_source_get_data(source);
	    if (data & DISPATCH_VNODE_WRITE) {
	        NSLog(@"The directory changed.");
	    }
	    if (data & DISPATCH_VNODE_DELETE) {
	        NSLog(@"The directory has been deleted.");
	    }
	});
	dispatch_source_set_cancel_handler(source, ^(){
	    close(fd);
	});
	self.source = source;
	dispatch_resume(self.source);
	


你应该总是添加 DISPATCH_VNODE_DELETE 去检测文件或者文件夹是否已经被删除——然后就停止监听。




 



## 参考
- [底层并发 API](https://www.objccn.io/issue-2-3/#input_output)