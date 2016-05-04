//
//  SZCalendarCell.m
//  SZCalendarPicker
//
//  Created by Stephen Zhuang on 14/12/1.
//  Copyright (c) 2014年 Stephen Zhuang. All rights reserved.
//

#import "SZCalendarCell.h"

@implementation SZCalendarCell
- (UILabel *)dateLabel
{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.width-6)];
        [_dateLabel setTextAlignment:NSTextAlignmentCenter];
        [_dateLabel setFont:[UIFont systemFontOfSize:17]];
        _dateLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:_dateLabel];
    }
    return _dateLabel;
}

- (NTDCircleView *)circleView{
    NSLog(@"%@",NSStringFromCGRect(self.bounds));
    if (!_circleView) {
        _circleView = [[NTDCircleView alloc]initWithBoardFrame:CGRectMake(3, 10, self.bounds.size.width-6, self.bounds.size.width-6) withBoardWidth:5 withRadius:10];
        [self addSubview:_circleView];
    }
    _circleView.hidden = NO;
    return _circleView;
}
@end
