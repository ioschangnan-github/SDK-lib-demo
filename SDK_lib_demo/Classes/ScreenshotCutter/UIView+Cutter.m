//
//  UIView+Cutter.m
//  ScreenShotTest
//
//  Created by 张雷 on 16/4/5.
//  Copyright © 2016年 zhiyou. All rights reserved.
//

#import "UIView+Cutter.h"

@implementation UIView (Cutter)

/**
 *  根据视图尺寸获取视图截屏
 *
 *  @return UIImage 截取的图片
 *  参考：https://developer.apple.com/library/ios/qa/qa1817/_index.html#//apple_ref/doc/uid/DTS40014134
 */
- (UIImage*)viewCutter{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size,NO,[[UIScreen mainScreen] scale]);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

-(void)afnetWorkTest{
    UIImage *image = [UIImage imageNamed:@"page.2.png"];
    NSLog(@"image = %@",image);
}

@end
