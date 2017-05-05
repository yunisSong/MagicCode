//
//  UIImage+base64Source.m
//  CMCC_CY
//
//  Created by Yunis on 16/10/14.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import "UIImage+base64Source.h"

@implementation UIImage (base64Source)
- (NSString *)base64String
{
    // 1. base64加密
    // 先获取压缩图片
    UIImage *compressionImage = [self originScaleToSize:CGSizeMake(120, 120)];
    // 再转换图片
    NSData *data = UIImageJPEGRepresentation(compressionImage, 1.0f);
//    //ISO-8859-1 编码
//    NSString *str = [[NSString alloc] initWithData:data encoding:NSISOLatin1StringEncoding];
//    //uft-8
//    NSData *t = [str dataUsingEncoding:NSUTF8StringEncoding];
    //base64
    NSString *encodedImageStr = [data base64EncodedStringWithOptions:0];
    return encodedImageStr;
}
+ (UIImage *)imageWithBase64String:(NSString *)base64Str
{
    if (!base64Str) {
        return nil;
    }
    NSData *data = [[NSData alloc] initWithBase64EncodedString:base64Str options:0];
    
    return [UIImage imageWithData:data];
}

- (UIImage*)originScaleToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaledImage;
}
@end
