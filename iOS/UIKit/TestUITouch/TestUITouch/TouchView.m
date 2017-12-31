//
//  TouchView.m
//  TestUITouch
//
//  Created by huahuahu on 2017/12/31.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//如果没有多点触控，那么touches只有一个
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

//手指移动
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    UITouch *touch = [touches anyObject];
//    NSLog(@"tapCount:%@",@(touch.tapCount));
//    NSLog(@"tapPhase:%@",@(touch.phase));
    
    CGPoint now = [touch locationInView:self];
    CGPoint previous = [touch previousLocationInView:self];
    NSLog(@"now:%@,previous:%@",[NSValue valueWithCGPoint:previous],[NSValue valueWithCGPoint:now]);

}

//手指离开
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

//有电话来，可能会被取消
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}
@end
