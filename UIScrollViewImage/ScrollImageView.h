//
//  ScrollImageView.h
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/21.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollImageView;

@protocol ScrollImageViewDelegate <NSObject>

- (void)scrollImageView:(ScrollImageView *)scrollView index:(NSInteger)index data:(id)data;

@end

@interface ScrollImageView : UIView

@property (nonatomic, weak) id <ScrollImageViewDelegate> delegate;

/**
 *  放入图片数据
 */
@property (nonatomic, strong) NSArray *dataArray;

/**
 *  设置界面
 */
- (void)setUpAttribute;

@end
