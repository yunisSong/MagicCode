//
//  NSString+Date.m
//  CMCC_CY
//
//  Created by Yunis on 16/10/10.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import "NSString+Date.h"

@implementation NSString (Date)
+ (NSString *)todayString
{
    return [NSString timeWithFormat:@"yyyyMMdd"];
}


- (NSString *)callTime
{
    NSDateFormatter *dateFormat = [ [NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMddHHmmss"];

    NSDate *date =[dateFormat dateFromString:self];
    
    [dateFormat setDateFormat:@"M月d日 HH:mm"];

    NSString *newDateStr = [dateFormat stringFromDate:date];
    return newDateStr;
    return @"";
}
- (NSString *)cySettingTime
{
    NSDateFormatter *dateFormat = [ [NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMddHHmmss"];
    
    NSDate *date =[dateFormat dateFromString:self];
    
    [dateFormat setDateFormat:@"M月d日"];
    
    NSString *newDateStr = [dateFormat stringFromDate:date];
    return newDateStr;
}
- (NSString *)mesageTime
{
    NSDateFormatter *dateFormat = [ [NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMddHHmmss"];
    
    NSDate *date =[dateFormat dateFromString:self];
    
    [dateFormat setDateFormat:@"M月d日 HH:mm"];
    
    NSString *newDateStr = [dateFormat stringFromDate:date];
    return newDateStr;
}

+ (NSString *)timeWithFormat:(NSString *)format
{
    NSDateFormatter *dateFormat = [ [NSDateFormatter alloc] init];
    NSDate *date =[NSDate date];
    
    [dateFormat setDateFormat:format];
    NSString *newDateStr = [dateFormat stringFromDate:date];
    return newDateStr;
}
+ (NSString *)nowTime
{
    NSDateFormatter *dateFormat = [ [NSDateFormatter alloc] init];
    NSDate *date =[NSDate date];
    
    [dateFormat setDateFormat:@"yyyyMMddHHmmss"];
    NSString *newDateStr = [dateFormat stringFromDate:date];
    return newDateStr;
}
@end
