//
//  HYQNetworkingManager.m
//  HotYQ
//
//  Created by __无邪_ on 15/10/10.
//  Copyright © 2015年 hotyq. All rights reserved.
//

#import "HYQNetworkingManager.h"
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
/**
 * API URL 调用参数
 */

NSString *const kAPI_AD_Launch = HOTYQ_JAVA_API @"indexdata/startAdv.do";


NSString *const kAPI_PAGE = @"page";
NSString *const kAPI_SIZE = @"size";


////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////


@implementation HYQNetworkingManager


#pragma mark - public interface

- (void)getLaunchAdvertisementCompletedHandler:(GGRequestCallbackBlock)completed{
    
    [self POST:kAPI_AD_Launch params:nil memoryCache:YES diskCache:YES completed:completed];
}


#pragma mark - life
+ (instancetype)sharedManager{
    static dispatch_once_t onceToken;
    static HYQNetworkingManager *manager;
    dispatch_once(&onceToken, ^{
        manager = [[HYQNetworkingManager alloc] init];
    });
    return manager;
}



////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////



@end
