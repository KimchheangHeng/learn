//
//  ViewController.m
//  OCBasic
//
//  Created by huahuahu on 2017/12/24.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *someString = @"the string";
    //Interface type cannot be statically allocated
//    NSString stackString;
    
    //字面量数组
    id o1 = @"o1";
    id o2 = nil;
    id o3 = @"03";
    
    NSArray *arrayA = [NSArray arrayWithObjects:o1,o2,o3, nil];
    NSArray *arrayB = @[o1,o2,o3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
