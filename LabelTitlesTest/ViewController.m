//
//  ViewController.m
//  LabelTitlesTest
//
//  Created by wdyzmx on 2019/9/5.
//  Copyright © 2019 wdyzmx. All rights reserved.
//

#import "ViewController.h"
#import "LabelTitleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    LabelTitleView *view = [[LabelTitleView alloc] initWithFrame:CGRectMake(0, 64, kscreenWidth, 30 + 20) titleArray:@[@"阿斯蒂芬", @"儿歌交换", @"我让", @"是的我", @"风格让个人头和他和她以后", @"二班包括金币", @"二比比", @"翻滚吧根本问题", @"儿童研究会", @"二听过吧", @"到国外划分公布的公布"]];
    [self.view addSubview:view];
    // Do any additional setup after loading the view.
}


@end
