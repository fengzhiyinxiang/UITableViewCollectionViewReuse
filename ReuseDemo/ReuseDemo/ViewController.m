//
//  ViewController.m
//  UITableViewUICollectionViewReuseDemo
//
//  Created by QF on 2018/8/1.
//  Copyright © 2018年 JZ. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+Reuse.h"

#import "XibSHV.h"
#import "CodeSHV.h"

#import "CodeCell.h"
#import "XibCell.h"

#import "CollectionViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    [self.tableView setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [self.tableView jy_registerHeaderFooterClass:[CodeSHV class]];
    [self.tableView jy_registerHeaderFooterClass:[XibSHV class]];
    
    [self.tableView jy_registerClass:[CodeCell class]];
    [self.tableView jy_registerClass:[XibCell class]];
}

- (UITableView*)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        
        _tableView.estimatedRowHeight = 44;
        _tableView.rowHeight = UITableViewAutomaticDimension;

        _tableView.sectionHeaderHeight = 44;
        _tableView.sectionFooterHeight = 44;

        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [tableView jy_dequeueHeaderFooterClass:[CodeSHV class]];
}

- (UIView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [tableView jy_dequeueHeaderFooterClass:[XibSHV class]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
        {
            CodeCell *cell = [tableView jy_dequeueClass:[CodeCell class]];
            return cell;
        }
            break;
            
        default:
        {
            XibCell *cell = [tableView jy_dequeueClass:[XibCell class]];
            return cell;
        }
            break;
    }
   
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewController *vc = [[CollectionViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
