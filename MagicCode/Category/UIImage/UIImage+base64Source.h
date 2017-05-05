//
//  UIImage+base64Source.h
//  CMCC_CY
//
//  Created by Yunis on 16/10/14.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (base64Source)
- (NSString *)base64String;
+ (UIImage *)imageWithBase64String:(NSString *)base64Str;
@end
