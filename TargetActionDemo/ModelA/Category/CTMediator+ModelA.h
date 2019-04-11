//
//  CTMediator+ModelA.h
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModelA)

- (UIViewController *)ModelA_ShowVCWithCallback:(void(^)(NSString *result))callback;

@end

NS_ASSUME_NONNULL_END
