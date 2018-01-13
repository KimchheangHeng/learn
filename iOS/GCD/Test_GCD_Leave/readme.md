# GCD 中使用 dispatch group 进行同步操作
话不多说，先上代码，在分析

## Code  

    - (void)viewDidLoad {
        [super viewDidLoad];
        
        dispatch_group_t group1 = dispatch_group_create();
        dispatch_group_t group2 = dispatch_group_create();
        
        NSLog(@"1,begin");
        if (1)
        {
            [self func1WithGroup:group1];
            dispatch_group_enter(group2);
            dispatch_group_notify(group1, dispatch_get_global_queue(0, 0), ^{
                NSLog(@"6, after group1 clear");
                [self func2WithGroup:group2];
                dispatch_group_leave(group2);
            });
        }
        
        //如果if中是0，那么也会执行，不会阻塞
        //因为group对应的值是0
        dispatch_group_notify(group2, dispatch_get_global_queue(0, 0), ^{
            NSLog(@"9, after group2 clear");
            [self finalFunc:group2];
        });
        NSLog(@"not blocking code ");
    }
    
    - (void)func1WithGroup:(dispatch_group_t)group
    {
        dispatch_group_enter(group);
        NSLog(@"2,after group1 enter");
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            NSLog(@"3,before group1 leave");
            [NSThread sleepForTimeInterval:1];
            dispatch_group_leave(group);
            NSLog(@"5, after group1 leave");
    
        });
    }
    
    - (void)func2WithGroup:(dispatch_group_t)group
    {
        dispatch_group_enter(group);
        NSLog(@"7,after group2 enter");
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [NSThread sleepForTimeInterval:1];
            dispatch_group_leave(group);
            NSLog(@"8, after group2 leave");
        });
    
    }
    
    - (void)finalFunc:(dispatch_group_t)group
    {
        NSLog(@"%@",NSStringFromSelector(_cmd));
    }
    
    
## 输出如下  

     1,begin
     2,after group1 enter
     not blocking code
     3,before group1 leave
     5, after group1 leave
     6, after group1 clear
     7,after group2 enter
     8, after group2 leave
     9, after group2 clear
     finalFunc:
     
## 先熟悉几个概念
> dispatch group 是 GCD 的一项特性，能够把任务分组。调用者可以等待这组任务执行完毕，也可以在提供回调函数之后继续往下执行，这组任务完成时，调用者会得到通知。  

此外还有两个函数 `dispatch_group_enter` 和 `dispatch_group_leave`  

> 前者能够使分组里正要执行的任务数递增，而后者则使之递减。  

`dispatch_group_notify` 这个函数，可以向此函数传入 block，等待 group 中任务数完成后，block 会在响应的队列中执行。  
> 假如当前线程不应阻塞，而开发者又想在那些任务全部完成时得到通知，那么此做法就很有必要了。  

## 代码分析  
1. 首先打印了 `1,begin`。  
1. 同步调用了 `func1WithGroup`，打印了 `2,after group1 enter`。  
1. 所有的函数都不是阻塞的，所有打印了`not blocking code`。  
1. `func1WithGroup` 中全局队列得到调用，打印了`3,before group1 leave` 及 `5, after group1 leave`。  
1. 由于此前 `group1` 中任务数都不是 0，所以第一个 `dispatch_group_notify` 对应的 block 一直没有被调用。此时 `group1` 中任务被清空，此 block 被调用，打印了 `6, after group1 clear`。  
1. block 中调用了 `func2WithGroup`，打印了 `7,after group2 enter`。  
1. `func2WithGroup` 中 block 被调用，打印了 `8, after group2 leave`。  
1. 由于调用了 `dispatch_group_enter`，此前 `group2` 中任务数目不是 0。此时被清空，`group2` 对应的 block 被调用，打印 `9, after group2 clear`。  
1. 调用 `finalFunc`，打印方法名字 `finalFunc`  

## 思考  
1. 利用 dispatch group 可以实现同步，也很方便把原来耗时操作放在异步线程中而不影响函数的调用时序，比如可以把全局队列的休眠函数换为文件读写。  
2. `dispatch_group_enter` 和 `dispatch_group_leave` 要配对


## 参考  
- Matt Galloway, 爱飞翔. Effective Objective-C 2.0:编写高质量iOS与OS X代码的52个有效方法[J]. 中国科技信息, 2014(6):131-131.

    
    
    


