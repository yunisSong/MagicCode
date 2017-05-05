//
//  UIFont+fontHeigth.m
//  VIVO
//
//  Created by Yunis on 16/8/23.
//  Copyright © 2016年 Yunis. All rights reserved.
//

#import "UIFont+fontHeigth.h"

@implementation UIFont (fontHeigth)
- (float)heigth
{
    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName:self, NSParagraphStyleAttributeName:paragraphStyle.copy};
    CGRect t = [@"Y" boundingRectWithSize:CGSizeMake(100, MAXFLOAT) options:options attributes:attributes context:nil];
    return t.size.height;
}
@end
