//
//  NSDictionary+requestSucess.m
//  CMCC_CY
//
//  Created by Yunis on 16/10/8.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import "NSDictionary+requestSucess.h"

@implementation NSDictionary (requestSucess)
- (BOOL)requestSucess
{
    NSString *ResultCode = [self objectForKey:@"ResultCode"];
    if ([ResultCode isEqualToString:@"0"] || ResultCode.intValue == 0) {
        return YES;
    }
    return NO;
}
@end
