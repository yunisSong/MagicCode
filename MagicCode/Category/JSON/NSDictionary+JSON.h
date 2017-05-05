//
//  NSDictionary+JSON.h
//  CMCC_CY
//
//  Created by Yunis on 17/3/23.
//  Copyright © 2017年 CMCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)
- (NSString *)toJsonString;
- (NSData *)toJsonData;
@end
