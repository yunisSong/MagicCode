//
//  NSData+JSON.m
//  CMCC_CY
//
//  Created by Yunis on 17/3/23.
//  Copyright © 2017年 CMCC. All rights reserved.
//

#import "NSData+JSON.h"

@implementation NSData (JSON)
- (NSDictionary *)toJsonDic
{
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:self
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
