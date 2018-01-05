//
//  ViewController.m
//  UIControlDevApp
//
//  Created by ice on 2018/1/5.
//  Copyright © 2018年 ice. All rights reserved.
//

#import "ViewController.h"
#import <RWUIControls/RWUIControls.h>

@interface ViewController ()
@property (nonatomic,strong) RWKnobControl *knobControl;
@property (nonatomic,strong) RWRibbonView *ribbonView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _knobControl = [[RWKnobControl alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    _knobControl.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    _knobControl.lineWidth = 4.0;
    _knobControl.pointerLength = 8.0;
    [self.view addSubview:_knobControl];
    
    UIImageView *im = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 440, 301)];
    im.image = [UIImage imageNamed:@"RWUIControls.bundle/IMG_001.JPG"];
    [self.view addSubview:im];
    
    CGRect frame=self.view.bounds;
    frame.origin.y = 310;
    frame.size.height *= 2/3.0;
    
    _ribbonView = [[RWRibbonView alloc] initWithFrame:CGRectInset(frame,0,20)];
    [self.view addSubview:_ribbonView];
}



@end
