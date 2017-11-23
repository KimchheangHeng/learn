//
//  ViewController.m
//  testEnumArray
//
//  Created by tigerguo on 2017/11/23.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.array = @[].mutableCopy;
    NSUInteger arrayCount = 100012000;
    for (NSUInteger i = 0; i < arrayCount; i++)
    {
        [self.array addObject:@(i)];
    }
    [self arrayFirst];
    [self arraySecond];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray*)getArray
{
    NSLog(@"called");
    return [self.array arrayByAddingObjectsFromArray:self.array];
}

- (void)arrayFirst
{
    NSUInteger coutn = 0;
    CFAbsoluteTime begin = CFAbsoluteTimeGetCurrent();
    for (NSNumber *num in [self getArray])
    {
        coutn = coutn + 1;
        //        NSLog(@"fdf");
    }
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"time is %@,coutn is %@",@(end - begin),@(coutn));

}

- (void)arraySecond
{
    NSUInteger coutn = 0;
    CFAbsoluteTime begin = CFAbsoluteTimeGetCurrent();
    NSArray *arry1 = [self getArray];
    for (NSNumber *num in arry1)
    {
        coutn = coutn + 1;
        //        NSLog(@"fdf");
    }
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"time is %@,coutn is %@",@(end - begin),@(coutn));

}

@end
