//
//  ViewController.m
//  BlockTest
//
//  Created by huahuahu on 2017/12/30.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self testArrayInBlock];
//    [self testCArrayInBlock];
    [self testBlockCopy];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testArrayInBlock
{
    NSMutableArray *array = [NSMutableArray array];
    void (^blk)(void) = ^{
        //Variable is not assignable (missing __block type specifier)
        //下面这句话编译不过
//        array = [NSMutableArray array];
        //不可以修改对象，可以调用更改对象的方法
        [array addObject:@"f"];
    };
    blk();
}

- (void)testCArrayInBlock
{
    //Cannot refer to declaration with an array type inside block
    //编译不过，block捕获不了数组。用指针可以解决
//    const char text[] = "hello";
    const char *text = "hello";
    void (^blk)(void) =  ^{
        printf("%c\n",text[2]);
    };
    blk();
}

- (void)testBlockCopy
{
    typedef void(^Blk) (void);
    Blk blk = [self getBlock];
    blk();
}

- (id)getBlock
{
    int val = 10;
    //下面这句是__NSStackBlock__，说明没赋值之前，还是在栈上的
    NSLog(@"%@",[^{NSLog(@"blk:%d",val);} class]);
    typedef void(^Blk) (void);
    Blk blk= ^{NSLog(@"blk:%d",val);};
//    这个blk 是 __NSMallocBlock__ 类型。。不是__NSStackBlock__
    //看来赋值之后，进行了copy操作。
    return blk;
    
//    return [[NSArray alloc] initWithObjects:^{NSLog(@"blk1 %d",val);},
//            ^{NSLog(@"blk2");},nil];
    
}

@end
