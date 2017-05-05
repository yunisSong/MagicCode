//
//  UITableView+PointindexSection.m
//  VIVO
//
//  Created by Yunis on 7/31/16.
//  Copyright © 2016 Yunis. All rights reserved.
//

#import "UITableView+PointindexSection.h"

@implementation UITableView (PointindexSection)
- (NSIndexPath *)y_indexPathForRowAtPoint:(CGPoint)point {
    NSIndexPath *indexPath = [self indexPathForRowAtPoint:point];
    if (indexPath) {
        return indexPath;
    }
    
    for (NSInteger section = 0; section < [self numberOfSections]; section++) {
        if (CGRectContainsPoint([self rectForSection:section], point)) {
            return [NSIndexPath indexPathForRow:0 inSection:section];
        }
    }
    
    return nil;
}
@end
