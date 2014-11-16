//
//  ViewController.m
//  weather
//
//  Created by liuhongnian on 14-11-16.
//  Copyright (c) 2014年 liuhongnian. All rights reserved.
//

#import "ViewController.h"
#import "WethrView.h"

@interface ViewController ()

@property (nonatomic,strong)WethrView *weatherView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupWeatherView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark prive

- (void)setupWeatherView
{
    self.weatherView = [[WethrView alloc] initWithFrame:CGRectMake(134, 28, 160, 228)];
    self.weatherView.canChangeTempType = YES;
    self.weatherView.showsTempType = YES;
    
    [self.view addSubview:self.weatherView];
}

@end
