//
//  Target_JumpList.m
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "Target_JumpList.h"
#import "FirstVC.h"
#import "SecondVC.h"

typedef void(^callback)(NSString *result);

@implementation Target_JumpList

- (UIViewController *)Action_FirstVC:(NSDictionary *)params{
    FirstVC *VC = [[FirstVC alloc] init];
    // callback block = [params objectForKey:@"callback"];
    callback block = [params valueForKeyPath:@"callback"];
    block(@"找到界面FirstVC");
    return VC;
}

- (UIViewController *)Action_SecondVC:(NSDictionary *)params{
    SecondVC *VC = [[SecondVC alloc] init];
    // callback block = [params objectForKey:@"callback"];
    callback block = [params valueForKeyPath:@"callback"];
    block(@"找到界面SecondVC");
    return VC;
}

@end
