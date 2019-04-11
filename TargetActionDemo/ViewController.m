//
//  ViewController.m
//  TargetActionDemo
//
//  Created by wpf on 2019/3/28.
//  Copyright © 2019 wpf. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+JumpList.h"
#import "CTMediator+ModelA.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 100, 300, 100);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"A模块组件" forState: UIControlStateNormal];
    [btn addTarget:self action:@selector(moduleA) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)moduleA {
    UIViewController *VC = [[CTMediator sharedInstance] ModelA_ShowVCWithCallback:^(NSString *result) {
        NSLog(@"%@", result);
    }];
    
    if (VC) {
        [self presentViewController:VC animated:YES completion:^{
            NSLog(@"跳转成功");
        }];
    }else{
        NSLog(@"找不到界面");
    }
}

@end
