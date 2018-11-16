//
//  CodeCSHV.m
//  UITableViewUICollectionViewReuseDemo
//
//  Created by QF on 2018/8/1.
//  Copyright © 2018年 JZ. All rights reserved.
//

#import "CodeCSHV.h"

@implementation CodeCSHV

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        
        [self addSubview:self.titleLB];
    }
    return self;
}

- (UILabel*)titleLB{
    if (!_titleLB) {
        _titleLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 0,200, 44)];
        _titleLB.text = @"纯代码的cshv";
    }
    return _titleLB;
}
@end
