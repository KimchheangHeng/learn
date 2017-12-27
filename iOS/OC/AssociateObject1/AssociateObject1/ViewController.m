//
//  ViewController.m
//  AssociateObject1
//
//  Created by huahuahu on 2017/12/26.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+asso.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSObject *myobj = [[NSObject alloc] init];
    myobj.myAssociatedObject = @"dfa";
    NSString *dd = myobj.myAssociatedObject;
    //下面这个函数移除对象的所有关联属性,不要用这方法
//    objc_removeAssociatedObjects(myobj);
    //应该向objc_setAssociatedObject传入一个nil来删除属性
    myobj.myAssociatedObject = nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
