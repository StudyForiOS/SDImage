//
//  ViewController.m
//  SDImage
//
//  Created by GYJade on 2018/11/9.
//  Copyright © 2018年 com.yhy. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 200, 300)];
    [self.view addSubview:imageView];
    NSURL *url = [NSURL URLWithString:@"http://taikefmall.img-cn-beijing.aliyuncs.com/gv=YVmGIWFB4is8awuGbHzD=YnSJLfoH==FO4LQH4D.jpg"];
//    [imageView sd_setImageWithURL: [NSURL URLWithString:@"http://taikefmall.img-cn-beijing.aliyuncs.com/gv=YVmGIWFB4is8awuGbHzD=YnSJLfoH==FO4LQH4D.jpg"]];
    
    [[SDImageCache sharedImageCache] clearMemory];
    [[SDImageCache sharedImageCache] clearDiskOnCompletion:^{
        
    }];
    NSLog(@"%lu", (unsigned long)[[SDImageCache sharedImageCache] getSize]);
    [imageView sd_setImageWithURL:url placeholderImage:nil options:3];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
