//
//  HLFFileManager.h
//  Common
//
//  Created by chen on 2017/2/7.
//  Copyright © 2017年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HLFFileManager : NSObject

/**
 将数据写入共享文件

 @param groupName 共享文件组名
 @param FilePath 文件路径
 @param value 写入数据仅支持值是NSArray、NSMutableArray、NSDictionary、NSMutableDictionary、NSString、NSMutableString、NSData等支持writeToFile:atomically:函数的类型
 @return 成功返回YES，失败返回NO
 */
+ (BOOL)saveDataByNSFileManagerWithGroups:(NSString *)groupName FilePath:(NSString *)FilePath value:(id)value;


/**
 从共享文件中读取数据

 @param groupName 共享文件组名
 @param FilePath 文件路径
 @param type 返回数据类型，如NSArray、NSMutableArray、NSDictionary、NSMutableDictionary、NSString、NSMutableString、NSData等类型的字符串形式
 @return 返回对应type类型的数据
 */
+ (id)readDataByNSFileManagerWithGroups:(NSString *)groupName FilePath:(NSString *)FilePath returnType:(NSString *)type;


+ (BOOL)removeFileByNSFileManagerWithGroups:(NSString *)groupName FilePath:(NSString *)FilePath;
@end
