runloop的demo
- 新建一个线程，会直接线程结束
- 如果往线程里加一个定时器，什么都不做，线程会结束,因为没有RunLoop 
- 如果开启了RunLoop，那么定时器的操作会被触发
- 如果只调用了RunLoop 的 run 方法，没有定时器，run方法会马上被回调，然后线程结束，因为RunLoop 中没有事件源  
- 可以为RunLoop增加一个port，保证线程永不终止
- 可以为RunLoop 增加 observer，监听 RunLoop 的状态。方便理解时间循环

