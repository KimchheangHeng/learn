//
//  ViewController.m
//  MessageForwardDemo
//
//  Created by huahuahu on 2017/12/27.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import "AutoDict.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AutoDict *autoDict = [[AutoDict alloc] init];
    autoDict.string = @"dfa";
    NSString *dd = autoDict.string;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
