//
//  UITableView+Reuse.h
//  EbikeMaintain
//
//  Created by QF on 2017/8/24.
//  Copyright © 2017年 jingyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Reuse)

- (void)jy_registerHeaderFooterClass:(Class)aClass;

- (void)jy_registerClass:(Class)aClass;

- (nullable __kindof UITableViewHeaderFooterView *)jy_dequeueHeaderFooterClass:(Class)aClass;

- (nullable __kindof UITableViewCell *)jy_dequeueClass:(Class)aClass;

@end
