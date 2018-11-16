//
//  CodeSHV.m
//  UITableViewUICollectionViewReuseDemo
//
//  Created by QF on 2018/8/1.
//  Copyright © 2018年 JZ. All rights reserved.
//

#import "CodeSHV.h"

@implementation CodeSHV

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLB];
    }
    return self;
}

- (UILabel*)titleLB{
    if (!_titleLB) {
        _titleLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
        _titleLB.text = @"纯代码表头";
    }
    return _titleLB;
}

@end
