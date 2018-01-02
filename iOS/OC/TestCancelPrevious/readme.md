`cancelPreviousPerformRequestsWithTarget` 方法  
只会取消当前runloop的方法。  
所以如果在一个线程中，调用在另一个线程中加入到runloop的方法，那么不会有效果
## 参考
- [JS魔法堂：函数节流（throttle）与函数去抖（debounce）](https://www.cnblogs.com/fsjohnhuang/p/4147810.html)
