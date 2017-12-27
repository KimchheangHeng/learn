# OC basic  
## 不能在栈上分配对象  

    //Interface type cannot be statically allocated
    NSString stackString;

因为对象所占内存总是分配在“堆空间”中，而不会分配在栈上。  
分配在堆中的内存必须直接管理（引用计数），分配在栈上用于保存变量的内存则会在其栈帧弹出时自动清理。    

## 字面量数组  
使用语法糖创建数组，若数组元素有 nil，会抛出异常。因为语法糖相当于先创建一个数组，然后把方括号里的所有对象都加到这数组中。  

    id o1 = @"o1";
    id o2 = nil;
    id o3 = @"03";
    
    NSArray *arrayA = [NSArray arrayWithObjects:o1,o2,o3, nil];
    NSArray *arrayB = @[o1,o2,o3];

arrayA 只有一个元素，arrayB 会crash。
    ![-w400](http://oda58fqub.bkt.clouddn.com/15141183673725.jpg)    
    
##  声明一个只在某一个某个文件中使用的常量  

    ///只在本文件使用的常量
    // 1. const 修饰符从右至左，因此下面是“一个常量，这个常量是指针，指向NSString对象”
    // 2. 编译器不会创建符号，而是把所有遇到的变量都替换为常值。
    static NSString *const klocalConstantStr = @"klocalConstantStr";
    
要注意 `const` 修饰符的位置。 `static` 的意思是该变量仅在定义此变量的编译单元中可见。  

## 声明一个对外公开的常量  
在头文件中，如下声明：  
    
    ///需要向外公开某个常量
    /// 在全局符号表里
    extern NSString *const TGSringConst;  
在实现文件(`.m`)中，实现这个常量。  

    //这个常量必须要定义，只能定义一次
    //在数据段为字符串分配存储空间
    NSString *const TGSringConst = @"TGSringConst";  

这样子声明的变量会在全局符号表里。  
这个方法比`#define`好，因为有类型信息，且不会重复定义。  

## 参考  
- Matt Galloway, 爱飞翔. Effective Objective-C 2.0:编写高质量iOS与OS X代码的52个有效方法[J]. 中国科技信息, 2014(6):131-131.
- [OCBasic](https://github.com/huahuahu/learn/tree/master/iOS/OC/OCBasic)






