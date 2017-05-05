//
//  UIViewController+topCtr.h
//  CMCC_CY
//
//  Created by Yunis on 17/3/15.
//  Copyright © 2017年 CMCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (topCtr)
+ (UIViewController *)getReallyPresentViewController;
+ (UIViewController *)getPresentedViewController;
@end
