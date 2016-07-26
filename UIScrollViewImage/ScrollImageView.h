//
//  ScrollImageView.h
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/21.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScrollViewImageProtocol.h"
#import "CustomImageView.h"

@class ScrollImageView;

@protocol ScrollImageViewDelegate <NSObject>

- (void)scrollImageView:(ScrollImageView *)scrollView index:(NSInteger)index data:(id)data;

@end

@interface ScrollImageView : UIView

@property (nonatomic, weak) id <ScrollImageViewDelegate> delegate;

/**
 *  放入图片数据
 */
//@property (nonatomic, strong) NSArray *dataArray;

@property (nonatomic, strong) NSArray <ScrollViewImageProtocol> *dataArray;

/**
 *  自定制界面的模板,自定制的view都继承这个CustomImageView,并实现它的两个方法
 */
@property (nonatomic, strong) CustomImageView *customImageViewTemplate;

/**
 *  设置界面
 */
- (void)setUpAttribute;

@end
