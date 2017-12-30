# iOS 中的 Block 
含有 Block 语法的源代码，被转换为一般 C 语言编译器能够处理的源代码，并作为极为普通的 C 语言源代码被编译。  
“截获”自动变量，即执行 Block 语法时，Block 语法表达式所使用的自动变量值被保存到 Block 的结构体实例中。  

##  Block 存储域  
Block 也是 OC 对象，可以存储在不同的区域。  

![](http://oda58fqub.bkt.clouddn.com/15146227586254.jpg)  

在下面两种情况下，block 会是 GlobalBlock：

- 记述全局变量的地方有 Block 语法
- Block 语法的表达式中不使用应截获的自动变量  

### 对Block进行copy
![](http://oda58fqub.bkt.clouddn.com/15146243921468.jpg)  

在 ARC 下，StackBlock 应该已经找不太到了。  
多次调用copy，不会有大问题。  

## __block 原理    
__block 会保存修饰变量的指针。所以 __block 捕获的变量，可以在block中被修改。
![](http://oda58fqub.bkt.clouddn.com/15146246573786.jpg)





## 参考  
- [ARC下NSStackBlock去哪了](https://www.jianshu.com/p/03ad4b2ecedf)
- [你真的理解__block修饰符的原理么？](http://blog.csdn.net/abc649395594/article/details/47086751)


