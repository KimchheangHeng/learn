//
//  TestViewController.m
//  TestVCLifeCircleAndRunLoop
//
//  Created by tigerguo on 2018/2/7.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)loadView
{
    [super loadView];

    NSLog(@"in presenting currentRunLoop %@ in %@",@(self.presentingVC.currentrunloopCount),NSStringFromSelector(_cmd));
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"presenting";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"in presenting currentRunLoop %@ in %@",@(self.presentingVC.currentrunloopCount),NSStringFromSelector(_cmd));
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"in presenting currentRunLoop %@ in %@",@(self.presentingVC.currentrunloopCount),NSStringFromSelector(_cmd));
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"in presenting currentRunLoop %@ in %@",@(self.presentingVC.currentrunloopCount),NSStringFromSelector(_cmd));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
