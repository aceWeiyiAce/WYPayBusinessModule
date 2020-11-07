//
//  NSBundle+WYPay_CurrentBundle.m
//  WYPayBusinessModule
//
//  Created by weiyi on 2020/11/7.
//  Copyright © 2020年 wwyy. All rights reserved.
//

#import "NSBundle+WYPay_CurrentBundle.h"

@interface WYPayCurrentBundlePrivate : NSObject
@end

@implementation WYPayCurrentBundlePrivate
@end

static NSBundle *_wyPayResources_bundle = nil;
@implementation NSBundle (WYPay_CurrentBundle)

+ (NSBundle *)wyPay_currentBundle
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _wyPayResources_bundle = [NSBundle bundleForClass:[WYPayCurrentBundlePrivate class]];
    });
    return _wyPayResources_bundle;
}

@end
