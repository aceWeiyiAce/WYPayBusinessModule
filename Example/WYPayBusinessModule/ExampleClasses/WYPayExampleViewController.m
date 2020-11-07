//
//  WYPayExampleViewController.m
//  WYPayBusinessModule
//
//  Created by weiyi on 2020/11/7.
//  Copyright © 2020年 wwyy. All rights reserved.
//

#import "WYPayExampleViewController.h"
#import "WYPayExampleCellModel.h"

static NSString *reusableExampleCellIdentifier = @"MIAExampleCell";

@interface WYPayExampleViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *exampleCellModels;

@end

@implementation WYPayExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"WYPayBusinessModule";
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.exampleCellModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusableExampleCellIdentifier forIndexPath:indexPath];
    WYPayExampleCellModel *example = [self.exampleCellModels objectAtIndex:indexPath.row];
    cell.textLabel.text = example.exampleName;
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WYPayExampleCellModel *example = [self.exampleCellModels objectAtIndex:indexPath.row];
    if (example.destinationViewController) {
        UIViewController *destinationVc = [[[example.destinationViewController class] alloc] init];
        destinationVc.title = example.exampleName;
        [self.navigationController pushViewController:destinationVc animated:YES];
    } else if (example.clickBlock) {
        example.clickBlock();
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Properties
- (UITableView *)tableView
{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc] init];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reusableExampleCellIdentifier];
    }
    return _tableView;
}

- (NSMutableArray *)exampleCellModels
{
    if (_exampleCellModels == nil) {
        _exampleCellModels = [NSMutableArray array];
        
        WYPayExampleCellModel *aboutExample = [WYPayExampleCellModel exampleWithExampleName:@"关于 WYPayBusinessModule"];
        aboutExample.destinationViewController = NSClassFromString(@"WYPayExampleAboutViewController");
        [_exampleCellModels addObject:aboutExample];
        
    }
    return _exampleCellModels;
}

@end
