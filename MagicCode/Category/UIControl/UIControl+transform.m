//
//  UIControl+transform.m
//  RingbackMusic
//
//  Created by Yunis on 16/3/7.
//  Copyright © 2016年 yunis. All rights reserved.
//

#import "UIControl+transform.h"

@implementation UIControl (transform)
- (void)transformSetting
{
    [self addTarget:self action:@selector(scaleToSmall)
   forControlEvents:UIControlEventTouchDown | UIControlEventTouchDragEnter];
    [self addTarget:self action:@selector(scaleAnimation)
   forControlEvents:UIControlEventTouchUpInside];
    [self addTarget:self action:@selector(scaleToDefault)
   forControlEvents:UIControlEventTouchDragExit | UIControlEventTouchCancel];
}
- (void)scaleToSmall
{
    typeof(self) __weak weak = self;
    
    self.transform = CGAffineTransformMakeScale(1, 1);
    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.5f initialSpringVelocity:0.0f options:UIViewAnimationOptionLayoutSubviews animations:^{
        weak.transform = CGAffineTransformMakeScale(0.9, 0.9);

    } completion:^(BOOL finished) {
        
    }];
    
    
}

- (void)scaleAnimation
{
    typeof(self) __weak weak = self;
    self.transform = CGAffineTransformMakeScale(1.1, 1.1);

    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.5f initialSpringVelocity:0.0f options:UIViewAnimationOptionLayoutSubviews animations:^{
        weak.transform = CGAffineTransformMakeScale(1, 1);
    } completion:^(BOOL finished) {
    }];
    
//    CAKeyframeAnimation *k = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
//    k.values = @[@(1.0),@(1.3),@(1.0)];
//    k.keyTimes = @[@(0.0),@(0.5),@(0.8),@(1.0)];
//    k.calculationMode = kCAAnimationLinear;
//    
//    [self.layer addAnimation:k forKey:@"Show"];

}

- (void)scaleToDefault
{
    typeof(self) __weak weak = self;
    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.5f initialSpringVelocity:0.4f options:UIViewAnimationOptionLayoutSubviews animations:^{
        weak.transform = CGAffineTransformMakeScale(1, 1);
    } completion:^(BOOL finished) {
        
    }];
}

@end
