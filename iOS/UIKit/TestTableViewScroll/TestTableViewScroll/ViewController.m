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
@property (nonatomic, strong) NSMutableArray *displayedCells;
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
    self.displayedCells = [NSMutableArray array];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(60 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self saveDisplayedCell];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)saveDisplayedCell
{
    NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/displayedCell.txt"];
    NSError *error = nil;
    NSData *data = [NSJSONSerialization dataWithJSONObject:self.displayedCells options:NSJSONWritingPrettyPrinted error:&error];
//    if (data)
//    {
//        NSString *jsonStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//        
//    }
    [data writeToFile:filePath atomically:YES];
}
#pragma mark tableview

//快速滑动，不会每次都调用。
//从第一个cell快速滑到最后一个cell，这个函数不会调用datacount次
//猜想UItableview在滚动时，会定时重绘。
//比如时刻1，显示下标为 10-20的cell，那么会为这些cell调用 cellForRow 方法。
//   时刻2，由于滚动太快，显示下标为 25-35的cell，那么为这些cell调用 cellForRow 方法。中间的 21-24 就没有被调用。
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseID];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",self.datas[indexPath.row]];
    NSLog(@"cell for %@",indexPath);
    [self.displayedCells addObject:@(indexPath.row)];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}





@end


