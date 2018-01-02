//
//  ViewController.m
//  TestCancelPrevious
//
//  Created by tigerguo on 2018/1/2.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSThread *thread;
@end

@implementation ViewController

- (IBAction)clicked:(id)sender {
    [self performSelector:@selector(realllyFunc) onThread:self.thread withObject:nil waitUntilDone:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.thread = [[NSThread alloc] initWithTarget:self selector:@selector(entryFunc) object:nil];
    self.thread.name = @"test";
    [self.thread start];
    [self realllyFunc];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)entryFunc
{
    NSLog(@"enterFunc");
    [[NSRunLoop currentRunLoop] addPort:[NSPort port] forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate distantFuture]];
    NSLog(@"afterRun");
}




- (void)printFunc
{
    //写在外面，起不到防抖（debounce）的效果，
    //这个如果写在这里，起不到取消操作的方法，因为操作被加到了主线程中，而不是子线程中
    //This method removes perform requests only in the current run loop, not all run loops.
//    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(realllyFunc) object:nil];
    dispatch_async(dispatch_get_main_queue(), ^{
        //写在这里，才会有防抖（debounce）的效果
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(realllyFunc) object:nil];
        [self performSelector:@selector(realllyFunc) withObject:nil afterDelay:5];
    });
    NSLog(@"called");
    
}

- (void)realllyFunc
{
    [self performSelector:@selector(printFunc) onThread:self.thread withObject:nil waitUntilDone:NO];
}



@end
