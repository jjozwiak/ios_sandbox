//
//  singleViewViewController.m
//  singleView
//
//  Created by Jason Jozwiak on 11/27/12.
//  Copyright (c) 2012 Jason Jozwiak. All rights reserved.
//

#import "singleViewViewController.h"
#import "subView.h"

@interface singleViewViewController ()

@end

@implementation singleViewViewController

@synthesize hidden = _hidden;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    backButton.backgroundColor = [UIColor clearColor];
    [backButton setTitle:@"BUTTON 1" forState:UIControlStateNormal];
    backButton.frame = CGRectMake(100.0, 100.0, 120.0, 50.0);
    [backButton addTarget:self action:@selector(handleSingleTap) forControlEvents:UIControlEventTouchUpInside];
    
    subView *viewOne = [[subView alloc] init];
    viewOne.backgroundColor = [UIColor blackColor];
    viewOne.frame = CGRectMake(200, 200, 300, 300);
    
    NSURL *imgUrl=[[NSURL alloc] initWithString:@"http://img835.imageshack.us/img835/9794/screenshot20110802at345.png"];
    NSData *imgData = [NSData dataWithContentsOfURL:imgUrl];
    UIImage *img = [UIImage imageWithData:imgData];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    imageView.hidden = test;
    
    [self.view addSubview:backButton];
    [self.view addSubview:viewOne];
    [self.view addSubview:imageView];
    
    NSLog(@"%i", test);
}

- (void)handleSingleTap {
    
    //[self dismissModalViewControllerAnimated:YES];
    NSLog(@"button tapped");
    test = 0;
    NSLog(@"%i", test);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
