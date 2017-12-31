//
//  ViewController.m
//  TestUITouch
//
//  Created by huahuahu on 2017/12/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TouchView *view = [[TouchView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
