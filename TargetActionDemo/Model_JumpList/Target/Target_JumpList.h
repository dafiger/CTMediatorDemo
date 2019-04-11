//
//  Target_JumpList.h
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_JumpList : NSObject

- (UIViewController *)Action_FirstVC:(NSDictionary *)params;
- (UIViewController *)Action_SecondVC:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
