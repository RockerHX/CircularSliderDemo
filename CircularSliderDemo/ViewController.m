//
//  ViewController.m
//  CircularSliderDemo
//
//  Created by miaios on 16/4/29.
//  Copyright © 2016年 Mia Music. All rights reserved.
//

#import "ViewController.h"
#import "HXSectorSlider.h"


@interface ViewController ()
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HXSectorSlider *slider = [[HXSectorSlider alloc] initWithFrame:CGRectMake(0.0f, 500.0f, 320.0f, 100.0f)];
    slider.backgroundColor = [UIColor blackColor];
    slider.arcLineWidth = 10.0f;
    slider.sliderRadius = 30.0f;
    slider.arcColor = [UIColor redColor];
    slider.sliderColor = [UIColor greenColor];
    [self.view addSubview:slider];
}

@end
