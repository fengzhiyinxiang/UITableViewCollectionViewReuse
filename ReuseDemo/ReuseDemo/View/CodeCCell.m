//
//  CodeCCell.m
//  UITableViewUICollectionViewReuseDemo
//
//  Created by QF on 2018/8/1.
//  Copyright © 2018年 JZ. All rights reserved.
//

#import "CodeCCell.h"

@implementation CodeCCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        
        [self.contentView addSubview:self.titleLB];
    }
    return self;
}

- (UILabel*)titleLB{
    if (!_titleLB) {
        _titleLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.contentView.frame.size.width, self.contentView.frame.size.height)];
        _titleLB.text = @"纯代码的ccell";
    }
    return _titleLB;
}

@end
