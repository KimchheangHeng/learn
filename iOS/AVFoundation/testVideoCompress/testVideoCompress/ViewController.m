//
//  ViewController.m
//  testVideoCompress
//
//  Created by tigerguo on 2017/9/7.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAssetExportSession.h>

@interface ViewController ()
@property (nonatomic, strong) AVAssetExportSession *session;
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *current = [[NSDate date] description];
    NSURL *outputUrl = [NSURL fileURLWithPath:[NSHomeDirectory() stringByAppendingFormat:@"/Documents/%@.mp4",current]];
    [self compressVideoWithURL:nil outputURL:outputUrl handler:^(AVAssetExportSession *session) {
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)compressVideoWithURL:(NSURL*)inputURL
                   outputURL:(NSURL*)outputURL
                     handler:(void (^)(AVAssetExportSession*))handler {
    NSURL *movieUrl = [[NSBundle mainBundle] URLForResource:@"2" withExtension:@"mp4"];

    
    AVURLAsset *asset = [AVURLAsset assetWithURL:movieUrl];
    AVAssetExportSession *exportSession = [[AVAssetExportSession alloc] initWithAsset:asset presetName:AVAssetExportPreset960x540];
    self.session = exportSession;
//    exportSession.fileLengthLimit = 3000000;
    exportSession.outputURL = outputURL;
    exportSession.outputFileType = AVFileTypeMPEG4;
//    NSLog(@"allPresets %@",exportSession.allExportPresets);
    exportSession.shouldOptimizeForNetworkUse = YES;
    
    CFAbsoluteTime begin = CFAbsoluteTimeGetCurrent();
    [exportSession exportAsynchronouslyWithCompletionHandler:^{
        handler(exportSession);
        if (exportSession.status == AVAssetExportSessionStatusCompleted)
        {
            CFAbsoluteTime end =   CFAbsoluteTimeGetCurrent();
            NSLog(@"cost time %@",@(end - begin));
        }
        NSData *newOutputData = [NSData dataWithContentsOfURL:outputURL];
        NSLog(@"Size of New Video(bytes):%lu",(unsigned long)[newOutputData length]);
    }];
//    dispatch_async(dispatch_get_main_queue(), ^(void){
       self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(print) userInfo:nil repeats:YES];
        [self.timer fire];
//    });


//    self.timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(print) userInfo:nil repeats:YES];
//    [self.timer fire];
    
}

- (void)print
{
    NSLog(@"fire");
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"status %@,progress %@",@(self.session.status),@(self.session.progress));
        if (self.session.status == AVAssetExportSessionStatusCompleted || self.session.status == AVAssetReaderStatusFailed || self.session.status == AVAssetExportSessionStatusCancelled)
        {
            [self.timer invalidate];
        }

    });
}

@end
