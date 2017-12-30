//
//  ViewController.m
//  TestEnum
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import "EnumSet.h"
#import "EnumArray.h"
#import "EnumDict.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [[EnumArray shared] test];
//    [[EnumSet shared] test];
    [[EnumDict shared] test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
