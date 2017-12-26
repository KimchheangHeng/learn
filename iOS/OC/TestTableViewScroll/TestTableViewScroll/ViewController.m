//
//  ViewController.m
//  TestTableViewScroll
//
//  Created by tigerguo on 2017/12/26.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"
static NSString *const  kReuseID= @"kResuseID";


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *rawData = [NSMutableArray array];
    for (int i = 0; i < 1000; i++)
    {
        [rawData addObject:@(i)];
    }
    self.datas = rawData.copy;
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kReuseID];
    [self.view addSubview:self.tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark tableview

//快速滑动，不会每次都调用。
//从第一个cell快速滑到最后一个cell，这个函数不会调用datacount次
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseID];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",self.datas[indexPath.row]];
    NSLog(@"cell for %@",indexPath);
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}



@end


