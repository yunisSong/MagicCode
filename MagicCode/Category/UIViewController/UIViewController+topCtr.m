//
//  UIViewController+topCtr.m
//  CMCC_CY
//
//  Created by Yunis on 17/3/15.
//  Copyright © 2017年 CMCC. All rights reserved.
//

#import "UIViewController+topCtr.h"

@implementation UIViewController (topCtr)
+ (UIViewController *)getReallyPresentViewController{
    UIViewController *ctr = [self getPresentedViewController];
    
    UINavigationController *topNav = nil;
    UIViewController *TopCtr = nil;
    if ([ctr isKindOfClass:[UINavigationController class]])
    {
        topNav = (UINavigationController *)ctr;
        TopCtr = topNav.topViewController;
    }else
    {
        TopCtr = ctr;
    }
    return TopCtr;

}
+ (UIViewController *)getPresentedViewController
{
    UIViewController *appRootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController *topVC = appRootVC;
    if (topVC.presentedViewController) {
        topVC = topVC.presentedViewController;
        
        return [self presentedViewController:topVC];
        
    }
    return topVC;
}
+ (UIViewController *)presentedViewController:(UIViewController *)ctr
{
    if (ctr.presentedViewController)
    {
        ctr = ctr.presentedViewController;
        return [self presentedViewController:ctr];
    }
    return ctr;
}
@end
