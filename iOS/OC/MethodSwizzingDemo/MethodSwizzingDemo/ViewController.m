//
//  ViewController.m
//  MethodSwizzingDemo
//
//  Created by huahuahu on 2017/12/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *testStr = @"MY";
    NSString *lower = testStr.lowercaseString;
    
    NSString *newStr = [NSString stringWithString:lower];
    NSLog(@"%@",newStr);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
