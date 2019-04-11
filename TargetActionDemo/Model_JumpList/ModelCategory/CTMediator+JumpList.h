//
//  CTMediator+JumpList.h
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (JumpList)

- (UIViewController *)JumpList_FirstVCWithCallback:(void(^)(NSString *result))callback;
- (UIViewController *)JumpList_SecondVCWithCallback:(void(^)(NSString *result))callback;

@end

NS_ASSUME_NONNULL_END
