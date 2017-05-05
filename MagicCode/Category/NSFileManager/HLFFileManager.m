//
//  HLFFileManager.m
//  Common
//
//  Created by chen on 2017/2/7.
//  Copyright © 2017年 chen. All rights reserved.
//

#import "HLFFileManager.h"


@implementation HLFFileManager

+ (BOOL)saveDataByNSFileManagerWithGroups:(NSString *)groupName FilePath:(NSString *)FilePath value:(id)value
{
    //获取共享数据文件夹路径
    NSURL *containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:groupName];
    //文件路径
    containerURL = [containerURL URLByAppendingPathComponent:FilePath];

    //如果该类型支持writeToFile:atomically:函数
    if ([NSStringFromClass([value class]) respondsToSelector:@selector(writeToFile:atomically:)])
    {
        //将数据写入文件
        BOOL result = [value writeToURL:containerURL atomically:YES];
        
        return result;
    }
    return NO;
}

//从文件中读取数据
+ (id)readDataByNSFileManagerWithGroups:(NSString *)groupName FilePath:(NSString *)FilePath returnType:(NSString *)type
{
    //获取共享数据文件夹路径
    NSURL *containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:groupName];
    //文件路径
    containerURL = [containerURL URLByAppendingPathComponent:FilePath];
    //读取文件内容
    NSError *error = nil;
    NSData *data = [NSData dataWithContentsOfURL:containerURL options:NSDataReadingMappedIfSafe error:&error];

    return data;
}

//从文件中读取数据
+ (BOOL)removeFileByNSFileManagerWithGroups:(NSString *)groupName FilePath:(NSString *)FilePath
{
    //获取共享数据文件夹路径
    NSURL *containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:groupName];
    //文件路径
    containerURL = [containerURL URLByAppendingPathComponent:FilePath];
   
    NSError *error = [[NSError alloc]init];
    BOOL result = [[NSFileManager defaultManager]removeItemAtURL:containerURL error:&error];
    
    if (error)
    {
        return error;
    }
    
    return result;
}

@end
