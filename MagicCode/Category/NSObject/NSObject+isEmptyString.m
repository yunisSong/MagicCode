//
//  NSObject+isEmptyString.m
//  VIVO
//
//  Created by Yunis on 16/8/20.
//  Copyright © 2016年 Yunis. All rights reserved.
//

#import "NSObject+isEmptyString.h"

@implementation NSObject (isEmptyString)
/**
 *  @author Yunis, 16-08-20 10:08:36
 *
 *  @brief 判断是不是空的字符串
 *
 *  @return YES 代表不是字符串，或者字符串长度为0
            NO 为非空的字符串
 */
- (BOOL)isEmptySring
{
    if ([self isKindOfClass:[NSString class]]) {
        NSString *str = (NSString *)self;
        if (str.length >0) {
            return NO;
        }
        return YES;
    }else{
        
        return YES;
    }
}
@end
