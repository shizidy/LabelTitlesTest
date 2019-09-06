//
//  LabelTitleView.m
//  LabelTitlesTest
//
//  Created by wdyzmx on 2019/9/5.
//  Copyright © 2019 wdyzmx. All rights reserved.
//

#import "LabelTitleView.h"

@interface LabelTitleView ()
@property (nonatomic, strong) UILabel *tempLabel;
@property (nonatomic, strong) NSArray *titleArray;
@end

static CGFloat const labelHeight = 30;

@implementation LabelTitleView

- (instancetype)initWithFrame:(CGRect)frame titleArray:(NSArray *)titleArray {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
        self.frame = CGRectMake(0, 64, kscreenWidth, labelHeight + 20);
        self.titleArray = titleArray;
        [self setLabelTitles];
    }
    return self;
}

- (void)setLabelTitles {
    CGFloat space = 10;
    CGFloat labelY = space;
    CGFloat labelH = labelHeight;
    for (int i = 0; i < self.titleArray.count; i++) {
        NSString *title = self.titleArray[i];
        CGFloat labelW = [title boundingRectWithSize:CGSizeMake(kscreenWidth, labelHeight) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16]} context:nil].size.width + 10 * 2;
        CGFloat labelX = CGRectGetMaxX(self.tempLabel.frame) + space;
        if (labelX + labelW > kscreenWidth - space * 2) {
            labelX = space;
            labelY = CGRectGetMaxY(self.tempLabel.frame) + space;
        }
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(labelX, labelY, labelW, labelH)];
        [self addSubview:label];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:16];
        label.numberOfLines = 0;
        label.text = title;
        label.layer.backgroundColor = [[UIColor orangeColor] CGColor];
        label.layer.cornerRadius = labelH / 2;
        
        self.tempLabel = label;
    }
    self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetMaxY(self.tempLabel.frame) + space);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
