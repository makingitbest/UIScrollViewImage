//
//  OneTestModel.h
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/25.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScrollViewImageProtocol.h"

@interface OneTestModel : NSObject <ScrollViewImageProtocol>

@property (nonatomic, strong) NSString *oneImageName;
@property (nonatomic, strong) NSString *oneImageURL;
@property (nonatomic, strong) NSString *oneImageId;
@property (nonatomic, strong) NSString *oneImageTitle;

@end
