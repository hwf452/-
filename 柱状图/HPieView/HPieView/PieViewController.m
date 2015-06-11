//
//  PieViewController.m
//  HPieView
//
//  Created by zzvcom on 12-9-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PieViewController.h"

@interface PieViewController ()

@end

@implementation PieViewController
@synthesize pieview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel * lbl = [[UILabel alloc] initWithFrame:CGRectMake(205.0, 100.0, 100.0, 1.0)];
    lbl.backgroundColor = [UIColor blackColor];
    [self.view addSubview:lbl];

	// Do any additional setup after loading the view.
    NSMutableArray * floatarray = [[NSMutableArray alloc] initWithCapacity:3];
    
    float a = 15.0;
    float b = 20.0;
    float c = 30.0;
    float abc = a+b+c;
    float aa = a/abc;
    float bb = b/abc;
    float cc = c/abc;
    [floatarray addObject:[[NSString alloc] initWithFormat:@"%f",aa]];
    [floatarray addObject:[[NSString alloc] initWithFormat:@"%f",bb]];
    [floatarray addObject:[[NSString alloc] initWithFormat:@"%f",cc]];
//
    pieview = [[HPieChartView alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 200.0)  withNum:[floatarray count] withArray:floatarray];
    pieview.center = CGPointMake(160, 240);
    [self.view addSubview:pieview];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
