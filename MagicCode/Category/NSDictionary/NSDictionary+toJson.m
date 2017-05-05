//
//  NSDictionary+toJson.m
//  CMCC_CY
//
//  Created by Yunis on 16/10/8.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import "NSDictionary+toJson.h"

@implementation NSDictionary (toJson)
- (NSString *)toJson
{
    NSString *jsonString = nil;
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
}
@end
