//
//  ViewController.m
//  Block_weak_retain_cycle
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //定义一个弱引用，另其指向self。这变量会被block引用，而不是self。不会造成循环引用
    __weak ViewController *weakSelf = self;
    
    self.timer = [NSTimer timerWithTimeInterval:5 repeats:YES block:^(NSTimer * _Nonnull timer) {
        //开始执行时，立刻生成 strong 引用，保证实例在执行期间持续存活
        //如果实例dealloc之后，没有 invalidate 定时器，那么 strongSelf 会是nil，不会出问题
        __strong ViewController *strongSelf = weakSelf;
        [strongSelf onTime];
    }];
}

- (void)onTime
{
    NSLog(@"fda");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_timer invalidate];
}

@end
