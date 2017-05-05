//
//  UIBarButtonItem+contentView.m
//  CMCC_CY
//
//  Created by Yunis on 9/21/16.
//  Copyright © 2016 CMCC. All rights reserved.
//

#import "UIBarButtonItem+contentView.h"
#import "UIView+redDot.h"
@implementation UIBarButtonItem (contentView)
- (UIView *)contenView
{
    return [self valueForKeyPath:@"_view"];//use KVC to hack actual view
}
- (void)addRedDot
{
    [[self contenView] addRedDot];
}
- (void)removeRedDot
{
    [[self contenView] removeRedDot];

}
@end
