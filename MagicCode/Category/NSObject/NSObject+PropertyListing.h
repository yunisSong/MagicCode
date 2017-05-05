//
//  NSObject+PropertyListing.h
//  CMCC_CY
//
//  Created by Yunis on 16/10/8.
//  Copyright © 2016年 CMCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyListing)
- (NSArray *)getAllProperties;
- (NSDictionary *)properties_aps;
-(void)printMothList;
- (void)cleanAllValue;
@end
