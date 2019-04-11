//
//  CTMediator+ModelA.m
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "CTMediator+ModelA.h"

@implementation CTMediator (ModelA)

- (UIViewController *)ModelA_ShowVCWithCallback:(void(^)(NSString *result))callback{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    return [self performTarget:@"ModelA" action:@"ShowVC" params:params shouldCacheTarget:NO];
}

@end
