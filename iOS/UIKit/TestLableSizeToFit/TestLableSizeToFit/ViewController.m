//
//  ViewController.m
//  TestLableSizeToFit
//
//  Created by tigerguo on 2018/2/12.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"
#import <sys/kdebug_signpost.h>

@interface ViewController ()
@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading    the view, typically from a nib.
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:self.label];
    self.label.backgroundColor = [UIColor redColor];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        kdebug_signpost(7, 0, 0, 0, 1);
        const BOOL isSync = NO;
        NSString * const text = @"test 的";
        if (isSync)
        {
            self.label.text = text;
            [self.label sizeToFit];
        }
        else
        {
            UIFont *font = self.label.font;
            dispatch_async(dispatch_get_global_queue(0, 0), ^{
                CGSize size = [text sizeWithAttributes:@{NSFontAttributeName:font}];
                CGRect rect = CGRectMake(100, 100, size.width, size.height);
                rect = CGRectIntegral(rect);
                dispatch_async(dispatch_get_main_queue(), ^{
                    self.label.text = text;
                    [self.label setFrame:rect];
                });
            });
        }
    });
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
