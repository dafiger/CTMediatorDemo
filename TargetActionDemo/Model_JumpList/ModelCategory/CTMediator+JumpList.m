//
//  CTMediator+JumpList.m
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "CTMediator+JumpList.h"

@implementation CTMediator (JumpList)

- (UIViewController *)JumpList_FirstVCWithCallback:(void(^)(NSString *result))callback{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"JumpList" action:@"FirstVC" params:params shouldCacheTarget:NO];
}

- (UIViewController *)JumpList_SecondVCWithCallback:(void(^)(NSString *result))callback{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"JumpList" action:@"SecondVC" params:params shouldCacheTarget:NO];
}

@end
