//
//  ViewController.m
//  testSueprClass
//
//  Created by tigerguo on 2017/9/25.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"
#import "B.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[B new] method2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
