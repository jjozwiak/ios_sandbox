//
//  WebTableViewViewController.m
//  WebTableView
//
//  Created by Jason Jozwiak on 5/25/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import "WebTableViewViewController.h"
#import "AFNetworking.h"

@interface WebTableViewViewController ()

@end

@implementation WebTableViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.restuarantNameLabel.text = [self.restuarantDetail objectForKey:@"name"];
    [self.restuarantImageView setImageWithURL:[NSURL URLWithString:[self.restuarantDetail objectForKey:@"icon"]]];
    self.restuarantAddressView.text = [self.restuarantDetail objectForKey:@"formatted_address"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
