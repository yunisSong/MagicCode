//
//  UILabel+ContentSize.m
//  VIVO
//
//  Created by Yunis on 7/18/16.
//  Copyright © 2016 Yunis. All rights reserved.
//

#import "UILabel+ContentSize.h"

@implementation UILabel (ContentSize)
- (CGSize)YunisContentSize {
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = self.lineBreakMode;
    paragraphStyle.alignment = self.textAlignment;
    
    NSDictionary * attributes = @{NSFontAttributeName : self.font,
                                  NSParagraphStyleAttributeName : paragraphStyle};
    
    CGSize contentSize = [self.text boundingRectWithSize:CGSizeMake(self.frame.size.width, MAXFLOAT)
                                                 options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading)
                                              attributes:attributes
                                                 context:nil].size;
    
    return contentSize;
}
@end
