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
#import "TestImageView.h"

@interface ViewController () <ScrollImageViewDelegate>

@property (nonatomic, strong) ScrollImageView *scrolView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSMutableArray <ScrollViewImageProtocol>*array = (id)[NSMutableArray array];
    
    {
        OneTestModel *model = [OneTestModel new];
        model.oneImageURL   = @"http://b.hiphotos.baidu.com/image/pic/item/f703738da9773912825f6388fc198618377ae2da.jpg";
        model.oneImageTitle = @"我就是一个标题.要改我的位置请在TestImageView中修改";
        [array addObject:model];
    }
    
    {
        OneTestModel *model = [OneTestModel new];
        model.oneImageURL   = @"http://bcs.img.r1.91.com/data/upload/2014/09_13/23/201409132316102240.jpg";
        model.oneImageTitle = @"想改我在这里TestImageView动我";
        [array addObject:model];
    }
    
    {
        TwoTestModel *model = [TwoTestModel new];
        model.twoImageURL   = @"http://f.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=34480776be0e7bec238f0be51a1e950e/b3fb43166d224f4a2ded606a0ff790529822d156.jpg";
        [array addObject:model];
    }

    {
        TwoTestModel *model = [TwoTestModel new];
        model.twoImageURL   = @"http://b.hiphotos.baidu.com/zhidao/pic/item/3c6d55fbb2fb4316cc29db3322a4462309f7d341.jpg";
        [array addObject:model];
    }

    self.scrolView                         = [[ScrollImageView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width - 40, 300)];
    self.scrolView.dataArray               = array;
    self.scrolView.delegate                = self;
    self.scrolView.customImageViewTemplate = [TestImageView new];
    [self.scrolView setUpAttribute];
    [self.view addSubview:self.scrolView];
}

- (void)scrollImageView:(ScrollImageView *)scrollView index:(NSInteger)index data:(id)data {

    NSLog(@"%ld,%@",index , data);
}

@end
