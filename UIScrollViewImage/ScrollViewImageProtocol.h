//
//  ScrollViewImageProtocol.h
//  UIScrollViewImage
//
//  Created by WangQiao on 16/7/25.
//  Copyright © 2016年 wq. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ScrollViewImageProtocol <NSObject>

@required

- (NSString *)loadImageInfo;

@optional

- (NSString *)loadTitle;

@end
