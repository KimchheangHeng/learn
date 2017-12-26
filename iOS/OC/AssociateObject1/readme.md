# 关联对象    
## 作用  
在已存在的类的 category 中，可以添加自定义属性。
## 为何需要  
> 在分类中，因为类的实例变量的布局已经固定，使用 @property 已经无法向固定的布局中添加新的实例变量（这样做可能会覆盖子类的实例变量），所以我们需要使用关联对象以及两个方法来模拟构成属性的三个要素。  

## 实现方法  
在头文件中如下：  

    @interface NSObject (asso)
    ///为NSObject这个类添加一个新的属性
    @property (nonatomic, strong) id myAssociatedObject;
    @end  
在实现文件中，如下：  

    @implementation NSObject (asso)
    //下面这句可有可不有
    @dynamic myAssociatedObject;
    
    - (void)setMyAssociatedObject:(id)object
    {
        //第二个参数要求是常量、唯一，selector完美满足
        objc_setAssociatedObject(self, @selector(myAssociatedObject), object, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    - (id)myAssociatedObject {
        return objc_getAssociatedObject(self, @selector(myAssociatedObject));
    }
    
    @end

其中`objc_setAssociatedObject` 是设置关联对象的方法。`OBJC_ASSOCIATION_RETAIN_NONATOMIC` 表示这个关联对象是强引用，不能原子引用。即对应 `nonatomic, strong`。  

## 
    
## 参考 
- [Objective-C Associated Objects 的实现原理](http://blog.leichunfeng.com/blog/2015/06/26/objective-c-associated-objects-implementation-principle/)  
- [关联对象 AssociatedObject 完全解析](https://segmentfault.com/a/1190000005677029)  
- [Associated Objects](http://nshipster.cn/associated-objects/)


