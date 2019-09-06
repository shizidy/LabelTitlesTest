//
//  LabelTitleView.h
//  LabelTitlesTest
//
//  Created by wdyzmx on 2019/9/5.
//  Copyright © 2019 wdyzmx. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kscreenWidth [UIScreen mainScreen].bounds.size.width
#define kscreenHeight [UIScreen mainScreen].bounds.size.height
NS_ASSUME_NONNULL_BEGIN

@interface LabelTitleView : UIView
- (instancetype)initWithFrame:(CGRect)frame titleArray:(NSArray *)titleArray;
@end

NS_ASSUME_NONNULL_END
