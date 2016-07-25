//
//  ViewController.m
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/21.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ViewController.h"
#import "ScrollImageView.h"

@interface ViewController () <ScrollImageViewDelegate>

@property (nonatomic, strong) ScrollImageView *scrolView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.scrolView           = [[ScrollImageView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, 400)];
    self.scrolView.dataArray = @[@"35_1.jpg",@"35_2.jpg",@"35_3.jpg",@"35_4.jpg",@"35_5.jpg"];
    self.scrolView.delegate  = self;
    [self.scrolView setUpAttribute];
    [self.view addSubview:self.scrolView];
}

- (void)scrollImageView:(ScrollImageView *)scrollView index:(NSInteger)index data:(id)data {

    NSLog(@"%ld,%@",index , data);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
