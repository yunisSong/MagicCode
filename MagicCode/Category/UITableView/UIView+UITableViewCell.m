//
//  UIView+UITableViewCell.m
//  RingbackMusic
//
//  Created by Yunis on 5/23/16.
//  Copyright © 2016 yunis. All rights reserved.
//

#import "UIView+UITableViewCell.h"

@implementation UIView (UITableViewCell)
- (UITableViewCell*)parentCell {
    
    // Iterate over superviews until you find a UITableViewCell
    UIView* view = self;
    while (view != nil) {
        if ([view isKindOfClass:[UITableViewCell class]]) {
            return (UITableViewCell*)view;
        } else {
            view = [view superview];
        }
    }
    return nil;
}

- (UITableView *)parentTableView
{
    UIView* view = self;
    while (view != nil) {
        if ([view isKindOfClass:[UITableView class]]) {
            return (UITableView*)view;
        } else {
            view = [view superview];
        }
    }
    return nil;
}

@end
