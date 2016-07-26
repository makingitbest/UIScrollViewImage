//
//  TestImageView.m
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/26.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "TestImageView.h"
#import "ScrollViewImageProtocol.h"
#import "UIImageView+WebCache.h"

@interface TestImageView ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel     *label;

@end

@implementation TestImageView

- (void)buildSubviews {

    self.imageView                     = [[UIImageView alloc] initWithFrame:self.bounds];
    self.imageView.contentMode         = UIViewContentModeScaleAspectFill;
    self.imageView.layer.masksToBounds = YES;
    [self addSubview:self.imageView];
    
    self.label               = [[UILabel alloc] initWithFrame:self.bounds];
    self.label.textColor     = [UIColor redColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.numberOfLines = 0;
    [self addSubview:self.label];
}

- (void)loadData:(id)data {
    
    id <ScrollViewImageProtocol> model = data;
    self.label.text                    = [model loadTitle];
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:[model loadImageInfo]]];
}

@end
