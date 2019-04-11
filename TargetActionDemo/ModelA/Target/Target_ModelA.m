//
//  Target_ModelA.m
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "Target_ModelA.h"
#import "ShowVC.h"

typedef void(^callback)(NSString *result);

@implementation Target_ModelA

- (UIViewController *)Action_ShowVC:(NSDictionary *)params{
    ShowVC *VC = [[ShowVC alloc] init];
    // callback block = [params objectForKey:@"callback"];
    callback block = [params valueForKeyPath:@"callback"];
    block(@"找到界面ShowVC");
    return VC;
}

@end
