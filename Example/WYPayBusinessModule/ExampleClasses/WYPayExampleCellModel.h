//
//  WYPayExampleCellModel.h
//  WYPayBusinessModule
//
//  Created by weiyi on 2020/11/7.
//  Copyright © 2020年 wwyy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WYPayExampleCellModel : NSObject

///例子标题
@property (nonatomic, strong) NSString *exampleName;
///目标控制器
@property (nonatomic, strong) Class destinationViewController;
///点击时的操作
@property (nonatomic, copy) void (^clickBlock)(void);

- (instancetype)initWithExampleName:(NSString *)exampleName;
+ (instancetype)exampleWithExampleName:(NSString *)exampleName;

@end
