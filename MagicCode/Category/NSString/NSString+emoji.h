//
//  NSString+emoji.h
//  YeTuoXunCY
//
//  Created by Yunis on 15-10-10.
//  Copyright (c) 2015年 yetuoxun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface  NSString(emoji)
+ (BOOL)stringContainsEmoji:(NSString *)string;
- (BOOL)isValidString;

- (BOOL)isIncludingEmoji;

- (instancetype)removedEmojiString;
@end
