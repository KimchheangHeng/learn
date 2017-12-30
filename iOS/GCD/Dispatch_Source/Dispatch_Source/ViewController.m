//
//  ViewController.m
//  Dispatch_Source
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) dispatch_source_t timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test
{
    //来自内核的定时器，据说比NStimer更准
    //在主线程上相应
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 4 * NSEC_PER_SEC, 1 * NSEC_PER_SEC);
    //定时器到期时的事情
    dispatch_source_set_event_handler(timer, ^{
        NSLog(@"wakeup");
        dispatch_cancel(timer);
    });
    //启动定时器，默认是关闭的
    dispatch_resume(timer);
    //取消时应该做的事情
    dispatch_source_set_cancel_handler(timer, ^{
        NSLog(@"cancled");
    });
    //必须持有，否则马上被释放，就不会响应了
    self.timer = timer;
}

@end
