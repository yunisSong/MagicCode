//
//  NSString+JSON.m
//  CMCC_CY
//
//  Created by Yunis on 17/3/23.
//  Copyright © 2017年 CMCC. All rights reserved.
//

#import "NSString+JSON.h"

@implementation NSString (JSON)
- (NSDictionary *)toJsonDic
{
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err)
    {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}
@end
