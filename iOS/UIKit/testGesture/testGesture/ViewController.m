//
//  ViewController.m
//  testGesture
//
//  Created by tigerguo on 2017/11/8.
//  Copyright © 2017年 tigerguo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIControl *tapControl;
//@property (nonatomic, strong) UIControl *panControl;
@property (nonatomic, strong) UIButton *panControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //tapControl
    self.tapControl = [[UIControl alloc] initWithFrame:CGRectMake(100, 200, 200, 300)];
    self.tapControl.backgroundColor = [UIColor redColor];
    UITapGestureRecognizer *gest = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped:)];
    [self.tapControl addGestureRecognizer:gest];
    [self.view addSubview:self.tapControl];
    
    
    //panControl
    self.panControl = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 50, 100)];
    self.panControl.userInteractionEnabled = YES;
    //这句话可以响应tap事件
//    [self.panControl addTarget:self action:@selector(tapped:) forControlEvents:UIControlEventTouchUpInside];

    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    
    
    [self.panControl addGestureRecognizer:pan];
    self.panControl.backgroundColor = [UIColor blueColor];
    [self.tapControl addSubview:self.panControl];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapped:(UITapGestureRecognizer*)tap
{
    NSLog(@"tapped");
}

- (void) handlePan:(UIPanGestureRecognizer *)recognizer
{
    NSLog(@"paned");
    CGPoint point =[recognizer translationInView:self.tapControl];
    if (UIGestureRecognizerStateBegan == [recognizer state])
    {
        [self.tapControl sendActionsForControlEvents:UIControlEventTouchDown];
        
    }
    
    else if (UIGestureRecognizerStateChanged == [recognizer state])
    {
        CGPoint toPoint = CGPointMake(self.panControl.frame.origin.x + point.x, self.panControl.frame.origin.y);
        toPoint = [self fixFinalPoint:toPoint];
        [self.panControl setFrame:CGRectMake(toPoint.x, toPoint.y, self.panControl.frame.size.width, self.panControl.frame.size.height)];
        [self.tapControl sendActionsForControlEvents:UIControlEventTouchDragInside];
    }
    else if (UIGestureRecognizerStateEnded == [recognizer state])
    {
        [self.panControl sendActionsForControlEvents:UIControlEventTouchUpInside];
        [self.panControl sendActionsForControlEvents:UIControlEventValueChanged];
        
    }
    else
    {
    }
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.tapControl];

}
#define LEFT_OFFSET 25
#define RIGHT_OFFSET 25

-(CGPoint)fixFinalPoint:(CGPoint)pnt{
    if (pnt.x < LEFT_OFFSET-(self.panControl.frame.size.width/2.f)) {
        pnt.x = LEFT_OFFSET-(self.panControl.frame.size.width/2.f);
    }else if (pnt.x+(self.panControl.frame.size.width/2.f) > self.tapControl.frame.size.width-RIGHT_OFFSET){
        pnt.x = self.tapControl.frame.size.width-RIGHT_OFFSET- (self.panControl.frame.size.width/2.f);
    }
    return pnt;
}



@end
