//
//  ViewController.m
//  readExif
//
//  Created by huahuahu on 2017/9/1.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "ViewController.h"
#import <AssetsLibrary/ALAsset.h>
#import <AssetsLibrary/ALAssetRepresentation.h>

@interface ViewController () <UIImagePickerControllerDelegate>
@property (nonatomic,strong) UIImageView *imageView; 
@property (nonatomic, strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(150, self.view.bounds.size.height - 200, self.view.bounds.size.width /2, 150)];
    self.button.backgroundColor = [UIColor redColor];
    self.button.center = CGPointMake(self.view.bounds.size.width/2, self.button.center.y);
    [self.button setTitle:@"选择照片" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(selectImage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.button.frame.origin.y - 40)];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.imageView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)selectImage
{
    UIImagePickerController *vc = [[UIImagePickerController alloc] init];
    vc.delegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
//    [picker dismissViewControllerAnimated:YES completion:nil];
//}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
//    NSLog(@"info is %@",info);
    [picker dismissViewControllerAnimated:YES completion:nil];
    //这种获取image的方法，不可以获取到exif信息
//    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
//    self.imageView.image = image;

    
    NSURL *referenceURL = [info objectForKey:UIImagePickerControllerReferenceURL];
    
    
    ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];
    [library assetForURL:referenceURL resultBlock:^(ALAsset *asset) {
        ALAssetRepresentation *rep = [asset defaultRepresentation];
        NSDictionary *metadata = rep.metadata;
        NSLog(@"%@", metadata);
        
        CGImageRef iref = [rep fullScreenImage] ;
        
        if (iref) {
            self.imageView.image = [UIImage imageWithCGImage:iref];
        }
    } failureBlock:^(NSError *error) {
        // error handling
    }];

}
@end 
