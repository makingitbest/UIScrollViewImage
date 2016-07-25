//
//  ViewController.m
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/21.
//  Copyright © 2016年 wq. All rights reserved.
//

#import "ViewController.h"
#import "ScrollImageView.h"
#import "OneTestModel.h"
#import "TwoTestModel.h"

@interface ViewController () <ScrollImageViewDelegate>

@property (nonatomic, strong) ScrollImageView *scrolView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSMutableArray <ScrollViewImageProtocol>*array = (id)[NSMutableArray array];
    
    {
        OneTestModel *model = [OneTestModel new];
        model.oneImageURL   = @"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQZHH9W8Cq6l5tNRkOVnCj59HXv0kaDZjOLpuF_oFECFFkycKteHw";
        [array addObject:model];
    }
    
    {
        OneTestModel *model = [OneTestModel new];
        model.oneImageURL   = @"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTeVRVLChCd2qx2o3GkUrIRusp4_IIIHwVvjDLqSAan6-rlpskK60QnAKo";
        [array addObject:model];
    }
    
    {
        TwoTestModel *model = [TwoTestModel new];
        model.twoImageURL   = @"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV3oGbjCknqoUL8ghiYw1GKRjkSN2N3EFBlbKNRHimFtLY2Up0";
        [array addObject:model];
    }

    {
        TwoTestModel *model = [TwoTestModel new];
        model.twoImageURL   = @"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJqPr9g0maxq1nHLZnf6avG7WOKTH3W4KspNatE4zTyBSJ7uiJsg";
        [array addObject:model];
    }

    self.scrolView           = [[ScrollImageView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, 300)];
    self.scrolView.dataArray = array;
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
