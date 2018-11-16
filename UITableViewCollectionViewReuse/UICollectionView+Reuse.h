//
//  UICollectionView+Reuse.h
//  UITableViewUICollectionViewReuseDemo
//
//  Created by QF on 2018/8/1.
//  Copyright © 2018年 JZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (Reuse)

- (void)jy_registerHeaderClass:(Class)aClass;

- (void)jy_registerClass:(Class)aClass;

- (void)jy_registerFooterClass:(Class)aClass;

- (__kindof UICollectionReusableView *)jy_dequeueHeaderClass:(Class)aClass indexPath:(NSIndexPath*)indexPath;

- (__kindof UICollectionViewCell *)jy_dequeueClass:(Class)aClass indexPath:(NSIndexPath*)indexPath;

- (__kindof UICollectionReusableView *)jy_dequeueFooterClass:(Class)aClass indexPath:(NSIndexPath*)indexPath;

@end
