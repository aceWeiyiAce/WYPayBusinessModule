//
//  WYPayExampleCellModel.m
//  WYPayBusinessModule
//
//  Created by weiyi on 2020/11/7.
//  Copyright © 2020年 wwyy. All rights reserved.
//

#import "WYPayExampleCellModel.h"

@implementation WYPayExampleCellModel

- (instancetype)initWithExampleName:(NSString *)exampleName
{
    if (self = [self init]) {
        self.exampleName = exampleName;
    }
    return self;
}

+ (instancetype)exampleWithExampleName:(NSString *)exampleName
{
    return [[self alloc] initWithExampleName:exampleName];
}

@end
