//
//  UIView+redDot.h
//  CMCC_CY
//
//  Created by Yunis on 9/21/16.
//  Copyright © 2016 CMCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (redDot)
@property (nonatomic, strong) UIImageView *badgeImagView;
- (void)addRedDot;
- (void)removeRedDot;
- (void)addLeftRedDot;
@end
