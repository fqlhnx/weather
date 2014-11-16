//
//  ViewController.m
//  weather
//
//  Created by liuhongnian on 14-11-16.
//  Copyright (c) 2014年 liuhongnian. All rights reserved.
//

#import "ViewController.h"
#import "WethrView.h"

#import "label_set.h"
#import "TalkingDataSDK.h"

@interface ViewController ()

@property (nonatomic,strong)WethrView *weatherView;

- (IBAction)openDianRuWall;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupWeatherView];
    
    [TalkingDataSDK init];
    DR_INIT(@"0000071E1A0000B2", NO, nil);
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

- (void)openDianRuWall
{
    DR_SHOW(1, self.view, nil);
}

@end
