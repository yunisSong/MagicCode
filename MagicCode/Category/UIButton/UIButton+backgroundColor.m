//
//  UIButton+backgroundColor.m
//  CMCC_CY
//
//  Created by Yunis on 9/26/16.
//  Copyright © 2016 CMCC. All rights reserved.
//

#import "UIButton+backgroundColor.h"
#import "UIColor+UIImage.h"
@implementation UIButton (backgroundColor)
- (void)setBackgroundColor:(nullable UIColor *)backgroundColor forState:(UIControlState)state
{
    UIImage *bgImage = [backgroundColor toImage];
    [self setBackgroundImage:bgImage forState:state];
}
@end
