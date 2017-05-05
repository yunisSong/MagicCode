//
//  UIColor+UIImage.h
//  CMCC_CY
//
//  Created by Yunis on 9/21/16.
//  Copyright © 2016 CMCC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (UIImage)
- (UIImage *)toImage;
- (UIImage *)toImageWithSize:(CGSize)size;
@end
