# 内存管理
## 概略
- GNUstep 把引用计数写在对象内存头部。
    - 少量代码即可完成
    - 可以统一管理引用计数用的内存块和对象用的内存块
- NSObject 使用散列表来管理引用计数。表键值为内存块地址
    - 对象用内存块的分配无需考虑内存块头部
    - 引用计数表各记录中有内存块地址，可以从记录中追溯对象的内存块

## autorelease/autoreleasepool
超出作用域时，对象实例的 release 实例方法被调用。      

- 生成并持有NSAutoreleasePool 对象
- 调用已经分配对象的 autorelease 实例方法
- 废弃 NSAutoreleasePool 对象

autoreleasepool 相当于 C 语言变量的作用域。  

在 Cocoa 框架中，相当于程序主循环的NSRunLoop 或者在其他程序可运行的地方，对 NSAutoreleasePool 对象进行生成、持有和废弃处理。  
### NSObject 的 autorelease 实现 
![](http://oda58fqub.bkt.clouddn.com/15137823863775.jpg)  

### NSAutoreleasePool 类的实现  
![](http://oda58fqub.bkt.clouddn.com/15137824011155.jpg)    
![](http://oda58fqub.bkt.clouddn.com/15137824253002.jpg)  
![](http://oda58fqub.bkt.clouddn.com/15137824400369.jpg)

## ARC 所有权修饰符   
修饰符可以保证附有修饰符的自动变量初始化为nil。
### __strong  
在超出变量作用域时，即该变量被废弃时，会释放其被赋予的对象。  

### __weak  
  解决循环引用，避免内存泄露。  
  在对象被废弃时，该弱引用自动失效，且处于 nil 被赋值的状态。  
  
### __unsafe\__unretained   
不属于编译器的内存管理对象。  

### __autoreleasing  
等价于在 ARC 无效时调用对象的 autorelease 方法，即对象被注册到 autoreleasepool。  
可以延长对象生命周期，使其在跨越方法调用边界后依然可以存活一段时间。如果没有自己的自动释放池，那么这个对象的释放时机就在当前线程的下一个事件循环。  
返回新生成的对象时，编译器检查方法名是否已 alloc/new/copy/mutableCopy 开始，如果不是，把返回值注册到自动释放池。



## ARC 实现  
编译器和运行时共同实现。  
ARC 自动执行 retain、release、autorelease操作。实际上，在调用这些方法时，不是普通的消息派发机制，而是直接调用其底层 C 函数版本，这样子性能更好。  

### strong  修饰符
1. 自动根据规则插入 retain、release 操作等   
    插入的是 C 函数，性能较好。  
    ![](http://oda58fqub.bkt.clouddn.com/15146168165729.jpg)  
 变成了  
 ![](http://oda58fqub.bkt.clouddn.com/15146168370647.jpg)  
 可以看到没有发送 retain、release 函数，而是直接调用 C 语言版本的内存管理函数。
2.  autorelease 优化  
    ![](http://oda58fqub.bkt.clouddn.com/15146169061421.jpg)  
    变成了  
    ![](http://oda58fqub.bkt.clouddn.com/15146169230452.jpg)  
    看到，不是调用objc_retain。这里编译器做了优化，objc_retainAutoreleasedReturnValue 和 objc_autoreleaseReturnValue 成对出现，避免频繁注册到自动释放池。  
    ![](http://oda58fqub.bkt.clouddn.com/15146171139494.jpg)  
    被变成了  
![](http://oda58fqub.bkt.clouddn.com/15146171323172.jpg)  
通过这两个函数的协作，可以不将对象注册到自动释放池中而自动传递。  
![](http://oda58fqub.bkt.clouddn.com/15146172144898.jpg)  

### weak 修饰符  
系统维护了一个引用计数表和weak表。引用计数表的 key 是内存块地址，value 是引用计数。此外还有一个weak表，key 是内存块的地址，value 是weak修饰符变量的地址。由于一个对象可以同时赋值给多个附有 weak 修饰符的变量中，所以对于一个键值，可注册多个变量的地址。   
    ![-w500](http://oda58fqub.bkt.clouddn.com/15146186444300.jpg)  
    
在某一个weak对象被释放时，将废弃对象的地址作为键值进行检索，可以高速获得对应的附有 weak 修饰符的变量的地址。然后把这些地址赋值为nil，从weak表中删除该记录，从引用计数表中删除废弃对象为地址的键值的记录。  
大量使用 weak 修饰符的变量，会消耗相应的 CPU 资源，因此不要频繁使用weak修饰符。  
访问weak修饰的变量，会被retain一次，然后注册到autoreleasepool中。所以在autoreleasepool结束前，都可以被正常使用
  
### autorelease 修饰符  
等同于 ARC 无效时调用对象的 autorelease 方法。
    










