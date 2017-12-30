//
//  ViewController.m
//  ARCStuff
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self testVoidTransfer];
    
//    [self testAutoRelease];
//    [self testWeakImmediateRelease];
    [self testWeakAutorelease];
}

- (void)testAutoRelease
{
    NSError *error = nil;
    //    NSError **pError 推断出来是 NSError * __autoreleasing *pError。
    //    和上面声明的strong不符合，所以下面编译不过。
    //    NSError **pError = &error;
    NSError * __strong *pError = &error;
    NSLog(@"%@",*pError);
    //po _objc_autoreleasePoolPrint() 可以打印注册到自动释放池上的对象

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//void* 和id的转化
- (void)testVoidTransfer
{
    id obj = [NSObject new];
    //Implicit conversion of Objective-C pointer type 'id' to C pointer type 'void *' requires a bridged cast
    //下面编译不过，需要进行特定的转化
//    void *p = obj;
    //下面可以编译过,加了bridge
    void *p = (__bridge void*)obj;
    //void * 转 id 这种和__unsafe_unretained 类似
    id o = (__bridge id)p;
    
    //这个，会是转换赋值的的变量，即p1，也持有所赋值的对象。和retain类似
    //转换完后，obj 和 p1 都持有对象。
    void *p1 = (__bridge_retained void*)obj;
    
    //这个，被转换的变量所持有的对象在该变量被赋值给转换目标后随之释放，和release类似
    //转换完后，p1被发送了一个release 消息。
    id obj1 = (__bridge_transfer id)p1;
    
    
}

- (void)testWeakImmediateRelease
{
    //Assigning retained object to weak variable; object will be released after assignment
    // 编译器判断生成的对象没有持有者，因此被马上释放
    id __weak obj = [NSObject new];
    NSLog(@"obj is %@",obj);
    
}

//weak修饰的变量，即是使用注册到自动释放池中的对象
- (void)testWeakAutorelease
{
    NSObject *obj = [NSObject new];
    @autoreleasepool{
        {
            id __weak obj1 = obj;
            //obj1会被retain一次，然后注册到autoreleasepool中
            //所以在autoreleasepool结束前，都可以被正常使用
            //这么做的原因是在访问引用对象的过程中，该对象有可能被废弃
            NSLog(@"%@",obj1);
            //又一次被注册到 autoreleasepool了
            NSLog(@"%@",obj1);
            //又一次被注册到 autoreleasepool了
            NSLog(@"%@",obj1);
            
//            所以最好在使用时强引用一次，这样子不会被频繁注册到autoreleasepool
            //这次会有一次注册
            id strongObj = obj1;
            //这次不会注册了
            NSLog(@"%@",strongObj);
            //这次不会注册了
            NSLog(@"%@",strongObj);
            //这次不会注册了
            NSLog(@"%@",strongObj);
            //这次不会注册了
            NSLog(@"%@",strongObj);
        }

    }
}

@end
