//
//  CollectionViewController.m
//  UITableViewUICollectionViewReuseDemo
//
//  Created by QF on 2018/8/1.
//  Copyright © 2018年 JZ. All rights reserved.
//

#import "CollectionViewController.h"
#import "UICollectionView+Reuse.h"

#import "XibCCell.h"
#import "CodeCCell.h"

#import "CodeCSHV.h"
#import "XibCSHV.h"

#define kScreenWidth self.view.frame.size.width
#define kScreenHeight self.view.frame.size.height

@interface CollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong) UICollectionView *collectionView;

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.collectionView];
    [self.collectionView setFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    
    [self.collectionView jy_registerHeaderClass:[CodeCSHV class]];
    [self.collectionView jy_registerHeaderClass:[XibCSHV class]];
    
    [self.collectionView jy_registerClass:[XibCCell class]];
    [self.collectionView jy_registerClass:[CodeCCell class]];
}

- (UICollectionView*)collectionView{
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
        _collectionView.backgroundColor = [UIColor whiteColor];
        _collectionView.alwaysBounceVertical = YES;
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
    }
    return _collectionView;
}

#pragma mark - UICollectionViewDataSource -

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
        {
            return [self.collectionView jy_dequeueClass:[XibCCell class] indexPath:indexPath];
        }
            break;
            
        default:
        {
            return [self.collectionView jy_dequeueClass:[CodeCCell class] indexPath:indexPath];
        }
            break;
    }
   
}

#pragma mark - UICollectionViewDelegateFlowLayout -
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
  
    return CGSizeMake(kScreenWidth/2, kScreenWidth/2);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    
    return CGSizeMake(0, 40);
}


#pragma mark - UICollectionViewDataSource -

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}

- (UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.section) {
        case 0:
        {
            UICollectionReusableView *view = [collectionView jy_dequeueHeaderClass:[XibCSHV class] indexPath:indexPath];
            return view;
        }
            break;
            
        default:
        {
            UICollectionReusableView *view = [collectionView jy_dequeueHeaderClass:[CodeCSHV class] indexPath:indexPath];
            return view;
        }
            break;
    }
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
