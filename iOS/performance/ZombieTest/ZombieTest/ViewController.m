//
//  ViewController.m
//  ZombieTest
//
//  Created by tigerguo on 2018/2/2.
//  Copyright © 2018年 tigerguo. All rights reserved.
//

#import "ViewController.h"
#import "Manager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Manager *manager1 = [Manager new];
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotify object:nil];
    {
        Manager *manager2 = [Manager new];
        NSLog(@"%@,%@",manager1,manager2);
        [[NSNotificationCenter defaultCenter] postNotificationName:kNotify object:nil];
    }
    //iOS8 会crash，因为 manager2 已经被dealloc，但是没有移除通知
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotify object:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
