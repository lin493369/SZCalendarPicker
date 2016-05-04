//
//  NTDCircleView.h
//  NewlyTech
//
//  Created by admin on 16/4/26.
//  Copyright © 2016年 moyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

@interface NTDCircleView : UIView
@property (nonatomic , assign) CGFloat width;
@property (nonatomic , assign) CGFloat radius;
@property (nonatomic,strong) UILabel *tipLabel;
-(instancetype)initWithBoardFrame:(CGRect)frame withBoardWidth:(CGFloat)width withRadius:(CGFloat)radius;
- (void)showTipLabelWithString:(NSString *)str;
@end
