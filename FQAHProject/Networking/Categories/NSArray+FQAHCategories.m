//
//  NSArray+FQAHCategories.m
//  FQAHProject
//
//  Created by __无邪_ on 3/31/16.
//  Copyright © 2016 fqah. All rights reserved.
//

#import "NSArray+FQAHCategories.h"

@implementation NSArray (FQAHCategories)
/** 字母排序之后形成的参数字符串 */
- (NSString *)paramsString
{
    NSMutableString *paramString = [[NSMutableString alloc] init];
    
    NSArray *sortedParams = [self sortedArrayUsingSelector:@selector(compare:)];
    [sortedParams enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([paramString length] == 0) {
            [paramString appendFormat:@"%@", obj];
        } else {
            [paramString appendFormat:@"&%@", obj];
        }
    }];
    
    return paramString;
}

/** 数组变json */
- (NSString *)jsonString{
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:NULL];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
@end
