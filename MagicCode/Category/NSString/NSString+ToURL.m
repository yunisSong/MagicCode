//
//  NSString+ToURL.m
//  CMCC_CY
//
//  Created by Yunis on 9/20/16.
//  Copyright © 2016 CMCC. All rights reserved.
//

#import "NSString+ToURL.h"

@implementation NSString (ToURL)
- (NSURL *)urlValue
{
    if (self && self.length > 0) {
        return [NSURL URLWithString:self];
    }else
    {
        return nil;
    }
}
@end
