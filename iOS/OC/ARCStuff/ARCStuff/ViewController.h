//
//  ViewController.h
//  ARCStuff
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import <UIKit/UIKit.h>

struct Data
{
    //ARC forbids Objective-C objects in struct
    // 下面编译不过
//    NSMutableArray *array;
    //需要转为 void * 可以编译过
    // 下面变量不属于 ARC 的编译器内存管理对象。
    NSMutableArray __unsafe_unretained *array;
};

@interface ViewController : UIViewController


@end

