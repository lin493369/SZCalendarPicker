//
//  NTDCircleView.m
//  NewlyTech
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 moyan. All rights reserved.
//

#import "NTDCircleView.h"
@interface NTDCircleView()


@end
@implementation NTDCircleView

- (id)initWithFrame:(CGRect)frame
{
    if (!self) {
        self = [self initWithBoardFrame:frame withBoardWidth:10 withRadius:10];
    }
    return self;
}
//在 frame 中心绘制圆
-(instancetype)initWithBoardFrame:(CGRect)frame withBoardWidth:(CGFloat)width withRadius:(CGFloat)radius{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        _width = width;
        self.radius = radius;
    }
    return self;
}
- (void)showTipLabelWithString:(NSString *)str{
    if (!_tipLabel) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 60, 30)];
        [label.layer setCornerRadius:5.0];
        label.layer.masksToBounds = YES;//隐藏边界
        [label setFont:[UIFont fontWithName:@"Helvetica-Bold" size:17]];
        label.center = self.center;
        [label setTextAlignment:NSTextAlignmentCenter];
        [label setTextColor:[UIColor whiteColor]];
        [label setBackgroundColor:RGBACOLOR(61, 124, 38, 1)];
        _tipLabel = label;

        [self addSubview:_tipLabel];
    }
    _tipLabel.text = str;
}
-(void)setTipLabel:(UILabel *)lable{
    _tipLabel = lable;
    _tipLabel.center = self.center;
    [self addSubview:_tipLabel];
}
-(void)setRadius:(CGFloat)radius{
    _radius = radius-_width/2;
}
-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    //一个不透明类型的Quartz 2D绘画环境,相当于一个画布,你可以在上面任意绘画
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat x = CGRectGetMidX(self.frame);
    CGFloat y = CGRectGetMidY(self.frame);
    
    //绘制一个半圆
    CGContextSetStrokeColorWithColor(context, RGBACOLOR(64, 71, 82, 1).CGColor);
    CGContextSetLineWidth(context, _width);//线的宽度
    CGContextAddArc(context, x, y, _radius, 0, M_PI, 0); //添加一个圆
    CGContextDrawPath(context, kCGPathStroke); //绘制路径
    
    //绘制另一个半圆
    CGContextSetStrokeColorWithColor(context, RGBACOLOR(236, 198, 19,1).CGColor);
    CGContextSetLineWidth(context, _width);//线的宽度
    CGContextAddArc(context, x, y, _radius, M_PI, 2*M_PI, 0); //添加一个圆
    CGContextDrawPath(context, kCGPathStroke); //绘制路径
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
