//
//  ViewController.m
//  TestAlign
//
//  Created by tigerguo on 2018/1/16.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //起点是100.5，在2x屏幕上，是像素对齐的。在3x屏幕上，像素不对齐
    //最好使用整数点坐标
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100.5, 100, 100, 100)];
    self.label.text  = @"text";
    [self.view addSubview:self.label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
