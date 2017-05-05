//
//  NSString+Date.h
//  CMCC_CY
//
//  Created by Yunis on 16/10/10.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Date)
+ (NSString *)todayString;
- (NSString *)callTime;
- (NSString *)cySettingTime;
- (NSString *)mesageTime;
+ (NSString *)nowTime;

@end
