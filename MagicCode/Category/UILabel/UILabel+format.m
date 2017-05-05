//
//  UILabel+format.m
//  VIVO
//
//  Created by Yunis on 8/6/16.
//  Copyright © 2016 Yunis. All rights reserved.
//

#import "UILabel+format.h"

@implementation UILabel (format)
- (void)formatWithTextColor:(UIColor *)color font:(UIFont *)tFont text:(NSString *)text
{
    self.font = tFont;
    self.textColor = color;
    self.text = text;
}
@end
