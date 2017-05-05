//
//  NSString+onlyInputNum.m
//  CMCC_CY
//
//  Created by Yunis on 16/10/24.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import "NSString+onlyInputNum.h"

@implementation NSString (onlyInputNum)
- (BOOL)validateNumber {
    BOOL res = YES;
    NSCharacterSet* tmpSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    int i = 0;
    while (i < self.length) {
        NSString * string = [self substringWithRange:NSMakeRange(i, 1)];
        NSRange range = [string rangeOfCharacterFromSet:tmpSet];
        if (range.length == 0) {
            res = NO;
            break;
        }
        i++;
    }
    return res;
}
@end
