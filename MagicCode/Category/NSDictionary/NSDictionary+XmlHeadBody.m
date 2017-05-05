//
//  NSDictionary+XmlHeadBody.m
//  VIVO
//
//  Created by Yunis on 8/8/16.
//  Copyright © 2016 Yunis. All rights reserved.
//

#import "NSDictionary+XmlHeadBody.h"

@implementation NSDictionary (XmlHeadBody)
- (NSDictionary *)headDic
{
    return self[@"head"];
}
- (NSDictionary *)bodyDic
{
    return self[@"body"];

}
- (int)HeadResultCode
{
    /*
     1050000060006
     1050000060011
     1050000060016
     
     需要到登录页面  看情况在处理
     
     */
    NSString *resultCode = [[self headDic] objectForKey:@"resultCode"];
    if (resultCode.length > 0) {
        
        return resultCode.intValue;

    }else
    {
        return -9999;
    }
}

- (NSString *)HeadResultDesc
{
    NSString *resultDesc = [[self headDic] objectForKey:@"resultDesc"];
    return resultDesc;
}
@end
