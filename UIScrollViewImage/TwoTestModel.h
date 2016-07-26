//
//  TwoTestModel.h
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/25.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScrollViewImageProtocol.h"

@interface TwoTestModel : NSObject <ScrollViewImageProtocol>

@property (nonatomic, strong) NSString *twoImageName;
@property (nonatomic, strong) NSString *twoImageURL;
@property (nonatomic, strong) NSString *twoImageId;

@end
