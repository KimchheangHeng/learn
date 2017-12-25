//
//  ViewController.m
//  OCBasic
//
//  Created by huahuahu on 2017/12/24.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

//这个常量必须要定义，只能定义一次
//在数据段为字符串分配存储空间
NSString *const TGSringConst = @"TGSringConst";


///只在本文件使用的常量
// 1. const 修饰符从右至左，因此下面是“一个常量，这个常量是指针，指向NSString对象”
// 2. 编译器不会创建符号，而是把所有遇到的变量都替换为常值。
static NSString *const klocalConstantStr = @"klocalConstantStr";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *someString = @"the string";
    //Interface type cannot be statically allocated
//    NSString stackString;
    
//    //字面量数组
//    id o1 = @"o1";
//    id o2 = nil;
//    id o3 = @"03";
//
//    NSArray *arrayA = [NSArray arrayWithObjects:o1,o2,o3, nil];
//    NSArray *arrayB = @[o1,o2,o3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
