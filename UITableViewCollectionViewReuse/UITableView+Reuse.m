//
//  UITableView+Reuse.m
//  EbikeMaintain
//
//  Created by QF on 2017/8/24.
//  Copyright © 2017年 jingyao. All rights reserved.
//

#import "UITableView+Reuse.h"

@implementation UITableView (Reuse)

- (void)jy_registerHeaderFooterClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    NSBundle *bundle = [NSBundle bundleForClass:aClass];
    NSString *path = [NSString stringWithFormat:@"%@/%@.nib",[bundle bundlePath],className];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UINib *nib = [UINib nibWithNibName:className bundle:bundle];
        [self registerNib:nib forHeaderFooterViewReuseIdentifier:className];
    }else{
        [self registerClass:aClass forHeaderFooterViewReuseIdentifier:className];
    }
}

- (void)jy_registerClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    NSBundle *bundle = [NSBundle bundleForClass:aClass];
    NSString *path = [NSString stringWithFormat:@"%@/%@.nib",[bundle bundlePath],className];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        UINib *nib = [UINib nibWithNibName:className bundle:bundle];
        [self registerNib:nib forCellReuseIdentifier:className];
    }else{
        [self registerClass:aClass forCellReuseIdentifier:className];
    }
}

- (nullable __kindof UITableViewHeaderFooterView *)jy_dequeueHeaderFooterClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    return [self dequeueReusableHeaderFooterViewWithIdentifier:className];
}

- (nullable __kindof UITableViewCell *)jy_dequeueClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    return [self dequeueReusableCellWithIdentifier:className];
}


@end
