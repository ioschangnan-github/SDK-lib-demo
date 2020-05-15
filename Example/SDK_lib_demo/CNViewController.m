//
//  CNViewController.m
//  SDK_lib_demo
//
//  Created by ioschangnan@163.com on 05/15/2020.
//  Copyright (c) 2020 ioschangnan@163.com. All rights reserved.
//

#import "CNViewController.h"
#import <Cutter.h>
@interface CNViewController ()

@end

@implementation CNViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view viewCutter];
    
    [self.view afnetWorkTest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
