//
//  UIScrollView+Cutter.m
//  ScreenShotTest
//
//  Created by 张雷 on 14/10/26.
//  Copyright (c) 2014年 zhanglei. All rights reserved.
//

#import "UIScrollView+Cutter.h"

@implementation UIScrollView (Cutter)

/**
 *  根据视图尺寸获取视图截屏（一屏无法显示完整）,适用于UIScrollView UITableviewView UICollectionView WKWebView
 *
 *  @return UIImage 截取的图片
 */
- (UIImage *)scrollViewCutter{
    //保存
    CGPoint savedContentOffset = self.contentOffset;
    CGRect savedFrame = self.frame;
    self.contentOffset = CGPointZero;
    self.frame = CGRectMake(0, 0, self.contentSize.width, self.contentSize.height);
    //列表太长生成图片太大导致压缩不下去，QQ分享不过去 最多截4屏
    if (self.contentSize.height > [UIScreen mainScreen].bounds.size.height * 4) {
        self.frame = CGRectMake(0, 0, self.contentSize.width, [UIScreen mainScreen].bounds.size.height * 4);
    }
    
    UIImage *image = [self viewCutter];
    
    //还原数据
    self.contentOffset = savedContentOffset;
    self.frame = savedFrame;
    
    return image;
}

@end
