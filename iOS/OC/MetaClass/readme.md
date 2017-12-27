# Class 和 MetaClass  
在 OC 中，类的一个实例定义如下：  

    /// Represents an instance of a class.
    struct objc_object {
        Class _Nonnull isa  OBJC_ISA_AVAILABILITY;
    };

即每一个对象，都有一个 `isa` 指针，指向它的 `CLASS`。而 `CLASS` 定义如下：  

    /// An opaque type that represents an Objective-C class.
    typedef struct objc_class *Class;  

即是 `objc_class` 的指针。 其中 `objc_class` 的定义如下： 
 
     struct objc_class {
        Class _Nonnull isa  OBJC_ISA_AVAILABILITY;
    
    #if !__OBJC2__
        Class _Nullable super_class                              OBJC2_UNAVAILABLE;
        const char * _Nonnull name                               OBJC2_UNAVAILABLE;
        long version                                             OBJC2_UNAVAILABLE;
        long info                                                OBJC2_UNAVAILABLE;
        long instance_size                                       OBJC2_UNAVAILABLE;
        struct objc_ivar_list * _Nullable ivars                  OBJC2_UNAVAILABLE;
        struct objc_method_list * _Nullable * _Nullable methodLists                    OBJC2_UNAVAILABLE;
        struct objc_cache * _Nonnull cache                       OBJC2_UNAVAILABLE;
        struct objc_protocol_list * _Nullable protocols          OBJC2_UNAVAILABLE;
    #endif
    
    } OBJC2_UNAVAILABLE;
    
在 `objc_class` 结构体中， `isa` 变量指向这个类的 meta class。  
![](http://oda58fqub.bkt.clouddn.com/15143839866153.jpg)

    
##  一些事实 
- 对实例发送方法时，往这个类的 `methodLists` 里找  
- 对类发送方法时，往这个类的元类的 `methodLists` 里找  
- 每个类的 Class 只有一个实例  

## `class` 方法与 `object_getClass` 方法  
> object_getClass(obj)返回的是obj中的isa指针；而[obj class]则分两种情况：一是当obj为实例对象时，[obj class]中class是实例方法：- (Class)class，返回的obj对象中的isa指针；二是当obj为类对象（包括元类和根类以及根元类）时，调用的是类方法：+ (Class)class，返回的结果为其本身。




##  参考 
- [iOS runtime 之 Class 和 MetaClass](https://www.jianshu.com/p/8036f15c91c6)
- [object_getClass(obj)与[obj class]的区别](https://www.jianshu.com/p/ae5c32708bc6)
- [Demo](https://github.com/huahuahu/learn/tree/master/iOS/OC/MetaClass)



