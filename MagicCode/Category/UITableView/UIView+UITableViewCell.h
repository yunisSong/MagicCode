//
//  UIView+UITableViewCell.h
//  RingbackMusic
//
//  Created by Yunis on 5/23/16.
//  Copyright © 2016 yunis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UITableViewCell)
- (UITableViewCell*)parentCell;
- (UITableView *)parentTableView;
@end
