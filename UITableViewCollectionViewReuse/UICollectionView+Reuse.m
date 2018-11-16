//
//  UICollectionView+Reuse.m
//  UITableViewUICollectionViewReuseDemo
//
//  Created by QF on 2018/8/1.
//  Copyright © 2018年 JZ. All rights reserved.
//

#import "UICollectionView+Reuse.h"

@implementation UICollectionView (Reuse)

- (void)jy_registerHeaderClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    NSBundle *bundle = [NSBundle bundleForClass:aClass];
    NSString *path = [NSString stringWithFormat:@"%@/%@.nib",[bundle bundlePath],className];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UINib *nib = [UINib nibWithNibName:className bundle:bundle];
        [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:className];
    }else{
        [self registerClass:aClass forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:className];
    }
}

- (void)jy_registerClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    NSBundle *bundle = [NSBundle bundleForClass:aClass];
    NSString *path = [NSString stringWithFormat:@"%@/%@.nib",[bundle bundlePath],className];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UINib *nib = [UINib nibWithNibName:className bundle:bundle];
        [self registerNib:nib forCellWithReuseIdentifier:className];
    }else{
        [self registerClass:aClass forCellWithReuseIdentifier:className];
    }
}

- (void)jy_registerFooterClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    NSBundle *bundle = [NSBundle bundleForClass:aClass];
    NSString *path = [NSString stringWithFormat:@"%@/%@.nib",[bundle bundlePath],className];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UINib *nib = [UINib nibWithNibName:className bundle:bundle];
        [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:className];
    }else{
        [self registerClass:aClass forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:className];
    }
}

- (__kindof UICollectionReusableView *)jy_dequeueHeaderClass:(Class)aClass indexPath:(NSIndexPath*)indexPath{
    NSString *className = NSStringFromClass(aClass);
    return  [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:className forIndexPath:indexPath];
}

- (__kindof UICollectionViewCell *)jy_dequeueClass:(Class)aClass indexPath:(NSIndexPath*)indexPath{
    NSString *className = NSStringFromClass(aClass);
    return  [self dequeueReusableCellWithReuseIdentifier:className forIndexPath:indexPath];
}

- (__kindof UICollectionReusableView *)jy_dequeueFooterClass:(Class)aClass indexPath:(NSIndexPath*)indexPath{
    NSString *className = NSStringFromClass(aClass);
    return  [self dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:className forIndexPath:indexPath];
}

@end
