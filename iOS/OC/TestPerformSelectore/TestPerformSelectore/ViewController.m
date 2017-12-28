//
//  ViewController.m
//  TestPerformSelectore
//
//  Created by tigerguo on 2017/12/28.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"
#import "TimerManager.h"
#import "PerformManager.h"

@interface ViewController ()
@property (nonatomic, strong) TimerManager *manager;
@property (nonatomic, strong) PerformManager *performManager;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //在后台线程中创建manager，可能没有runloop
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        self.manager =  [TimerManager shared];
    });
//    self.manager =  [TimerManager shared];
    //后台线程创建manager，可能没有runloop
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        self.performManager = [PerformManager shared];
    });
//    self.performManager = [PerformManager shared];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
