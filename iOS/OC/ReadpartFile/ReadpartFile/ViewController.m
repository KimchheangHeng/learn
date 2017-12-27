//
//  ViewController.m
//  ReadpartFile
//
//  Created by tigerguo on 2017/12/27.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self readPartFile];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)readPartFile
{
    NSString *readFilePath = [[NSBundle mainBundle] pathForResource:@"headPhone" ofType:@"txt"];
    NSFileHandle *readHandle = [NSFileHandle fileHandleForReadingAtPath:readFilePath];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    const NSUInteger readPatch = 1000;
    
    NSString *writePath = [NSHomeDirectory() stringByAppendingPathComponent:@"/Documents/out.txt"];
    
    NSDictionary *fileAttr = [fileManager attributesOfItemAtPath:writePath error:nil];
    NSUInteger fileSize = [[fileAttr objectForKey:NSFileSize] unsignedIntegerValue];

    [fileManager createFileAtPath:writePath contents:nil attributes:nil];
    
    NSFileHandle *writeHandle = [NSFileHandle fileHandleForWritingAtPath:writePath];
    unsigned long long currentOffSet = 0;
    
    NSData *outData = nil;
    do {
        outData = [readHandle readDataOfLength:readPatch];
        currentOffSet = [readHandle offsetInFile];
        [writeHandle writeData:outData];
        
    } while (outData.length);
    
    [readHandle closeFile];
    [writeHandle closeFile];
}

@end
