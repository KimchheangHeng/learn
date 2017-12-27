# method swizzing  
## 原理    
类的方法类别中，选择子的名称通过映射表找到应该调用的方法。如下所示：
![-w548](http://oda58fqub.bkt.clouddn.com/15143813501520.jpg)  
OC 的运行时提供了几个方法可以操作这张表。可以向其中新增选择子，改变选择子的实现，或者交换选择子映射到的指针。  
![-w495](http://oda58fqub.bkt.clouddn.com/15143815141036.jpg)  
在上图中，交换了 `lowercaseString` 和 `uppercaseString` 方法实现，新增了一个选择子 `newSelector`，修改了 `capitalizedString` 的实现。  
  
## 方法交换实现 Demo  
为 NSString 新增一个分类，交换 `lowercaseString` 方法  

    - (NSString*)my_lowerCase
    {
        //交换后，my_lowerCase 调用的是系统的方法，不会循环调用
        NSString *lowerString = [self my_lowerCase];
        NSLog(@"called swapped lower String");
        return lowerString;
    }  
在 `load` 方法里，进行方法调换  

    //交换实例方法
    Method raw =  class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swap = class_getInstanceMethod([NSString class], @selector(my_lowerCase));
    method_exchangeImplementations(raw, swap);

  
## 调用例子  
    NSString *testStr = @"MY";
    NSString *lower = testStr.lowercaseString;
输出如下：

    2017-12-27 21:28:40.661942+0800 MethodSwizzingDemo[96992:7927796] called swapped lower String

同样可以交换类方法。这个技术一般用于调试。  
## Method 和 IMP  
在 `runtime` 的头文件里，看到如下：  

    /// An opaque type that represents a method in a class definition.
    typedef struct objc_method *Method;

    struct objc_method {
        SEL _Nonnull method_name                                 OBJC2_UNAVAILABLE;
        char * _Nullable method_types                            OBJC2_UNAVAILABLE;
        IMP _Nonnull method_imp                                  OBJC2_UNAVAILABLE;
    }                                                            OBJC2_UNAVAILABLE;

即 IMP 是 Method 的一个属性。



