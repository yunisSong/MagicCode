//
//  UIColor+UIImage.m
//  CMCC_CY
//
//  Created by Yunis on 9/21/16.
//  Copyright © 2016 CMCC. All rights reserved.
//

#import "UIColor+UIImage.h"

@implementation UIColor (UIImage)
- (UIImage *)toImage
{
    return [self toImageWithSize:CGSizeMake(1.f, 1.f)];
}
- (UIImage *)toImageWithSize:(CGSize)size
{
    CGRect rect=CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [self CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
@end
