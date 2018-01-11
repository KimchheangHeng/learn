//
//  ViewController.m
//  Test_gcd_runloop
//
//  Created by tigerguo on 2018/1/4.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, assign) NSUInteger runLoopCount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.runLoopCount = 0;
    
    CFRunLoopObserverRef obser=  CFRunLoopObserverCreateWithHandler(kCFAllocatorDefault, kCFRunLoopBeforeWaiting|kCFRunLoopAfterWaiting, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
        if (activity == kCFRunLoopBeforeWaiting)
        {
            NSLog(@"kCFRunLoopBeforeWaiting");
        }
        else if (activity == kCFRunLoopAfterWaiting)
        {
            self.runLoopCount++;
            NSLog(@"kCFRunLoopAfterWaiting");
        }
    });
    
    CFRunLoopAddObserver([[NSRunLoop mainRunLoop] getCFRunLoop], obser, kCFRunLoopCommonModes);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [NSTimer scheduledTimerWithTimeInterval:6 repeats:0 block:^(NSTimer * _Nonnull timer) {
//            [self asyncCall:5];
//        }];
    });
    //用perform会有不同吗
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [NSTimer scheduledTimerWithTimeInterval:6 repeats:0 block:^(NSTimer * _Nonnull timer) {
                [self perform:@(5)];
            }];
        });

    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)asyncCall:(NSUInteger)count
{
    if (count == 0)
    {
        return;
    }
    NSLog(@"in count %@,runloop count %@",@(count),@(self.runLoopCount));
    dispatch_async(dispatch_get_main_queue(), ^{
        [self asyncCall:count-1];
    });
}

- (void)perform:(NSNumber*)count
{
    if (count.integerValue == 0)
    {
        return;
    }
    NSLog(@"in count %@,runloop count %@",count,@(self.runLoopCount));
    [self performSelector:@selector(perform:) withObject:@(count.integerValue - 1) afterDelay:0];
}



@end
