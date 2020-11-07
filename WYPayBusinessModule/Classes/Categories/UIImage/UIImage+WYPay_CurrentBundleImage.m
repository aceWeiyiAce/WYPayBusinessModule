//
//  UIImage+WYPay_CurrentBundleImage.m
//  WYPayBusinessModule
//
//  Created by weiyi on 2020/11/7.
//  Copyright © 2020年 wwyy. All rights reserved.
//

#import "UIImage+WYPay_CurrentBundleImage.h"

@implementation UIImage (WYPay_CurrentBundleImage)

+ (UIImage *)wyPay_imageNamed:(NSString *)name
{
    UIImage *image = [self imageNamed:name inBundle:[NSBundle wyPay_currentBundle] compatibleWithTraitCollection:nil];
    if (image == nil) {
        NSLog(@"============== %@ 图片丢失！=================", name);
    }
    return image;
}

@end
