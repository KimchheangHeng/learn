//
//  ViewController.m
//  MetaClass
//
//  Created by huahuahu on 2017/12/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import "Exam.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Exam *obj = [[Exam alloc] init];
    //下面三个返回的都是类
    Class class1 = [obj class];
    Class class2 = [Exam class];
    Class class3 = object_getClass(obj);
    
    //下面两个返回的都是元类
    Class class4 = object_getClass([Exam class]);
    
    Class metaClass = objc_getMetaClass(NSStringFromClass([Exam class]).UTF8String);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
