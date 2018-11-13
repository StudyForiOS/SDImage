//
//  ViewController.m
//  NsSet
//
//  Created by GYJade on 2018/11/13.
//  Copyright © 2018年 com.yhy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,strong) NSMutableSet *set;
@property (nonatomic,strong) NSSet *onlySet;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.set = [[NSMutableSet alloc] init];
    UIColor *color = [UIColor redColor];
    UIColor *color1 = [UIColor redColor];
    NSLog(@"%p",color);
    NSLog(@"%p",color1);
    [self.set addObject:color];
    [self.set addObject:color1];
    _onlySet = [[NSSet alloc] initWithObjects: color, color1, nil];
    
    NSLog(@"%lu",(unsigned long)self.set.count);
    NSLog(@"%lu",(unsigned long)self.onlySet.count);
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
