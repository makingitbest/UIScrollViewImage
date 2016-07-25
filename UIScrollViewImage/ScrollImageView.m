//
//  ScrollImageView.m
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/21.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ScrollImageView.h"

typedef enum : NSUInteger {
    
    kButtonTag = 30,
    
} EButtonEventTag;

@interface ScrollImageView () <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView  *scrollView;
@property (nonatomic, strong) UIPageControl *pageControl;
@property (nonatomic, strong) NSTimer       *timer;

@end

@implementation ScrollImageView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.scrollView                                = [[UIScrollView alloc] initWithFrame:self.bounds];
        self.scrollView.showsHorizontalScrollIndicator = NO;
        self.scrollView.bounces                        = NO;
        self.scrollView.pagingEnabled                  = YES;
        self.scrollView.delegate                       = self;
        [self addSubview:self.scrollView];
        
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, 100)];
        [self addSubview:self.pageControl];
    }
    return self;
}

- (void)setUpAttribute {
    
    CGFloat width  = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    
    for (int i = 0; i < self.dataArray.count; i++) {
        
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake( i * width, 0, width, height)];
        button.tag       = i + kButtonTag;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.scrollView addSubview:button];
        
        UIImageView *imageView        = [[UIImageView alloc] initWithFrame:button.bounds];
        imageView.image               = [UIImage imageNamed:self.dataArray[i]];
        imageView.contentMode         = UIViewContentModeScaleAspectFill;
        imageView.layer.masksToBounds = YES;
        [button addSubview:imageView];
        
    }
    
    self.scrollView.contentSize = CGSizeMake(width * self.dataArray.count, height);
    
    self.pageControl.numberOfPages = self.dataArray.count;
    
    [self.timer invalidate];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(timeEvent:) userInfo:nil repeats:YES];
    
}

- (void)buttonClick:(UIButton *)button {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(scrollImageView:index:data:)]) {
        
        NSInteger index = button.tag - kButtonTag;
        
        [self.delegate scrollImageView:self index:index data:self.dataArray[index]];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {

    CGFloat    width             = self.frame.size.width;
    NSUInteger index             = (self.scrollView.contentOffset.x + width / 2) / width;
    self.pageControl.currentPage = index;
}

- (void)timeEvent:(id)sender {
    
    if (self.scrollView.isDragging || self.scrollView.isTracking || self.scrollView.isDecelerating) {
        
        return;
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        
        CGFloat  width                = self.frame.size.width;
        self.scrollView.contentOffset = CGPointMake((self.pageControl.currentPage + 1) % self.dataArray.count * width, 0);
    }];
}

- (void)dealloc {

    [self.timer invalidate];
}
@end
