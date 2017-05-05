//
//  NSDictionary+XmlHeadBody.h
//  VIVO
//
//  Created by Yunis on 8/8/16.
//  Copyright © 2016 Yunis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (XmlHeadBody)
- (NSDictionary *)headDic;
- (NSDictionary *)bodyDic;
- (int)HeadResultCode;
- (NSString *)HeadResultDesc;
@end
