//
//  singleViewViewController.m
//  QuickConnections
//
//  Created by Jason Jozwiak on 1/12/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import "singleViewViewController.h"

@interface singleViewViewController ()


@end

@implementation singleViewViewController

@synthesize textField;
@synthesize label;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    NSString *message = [[NSString alloc] initWithFormat: @"Hello %@", textField.text ];
    [label setText:message];
    [textField resignFirstResponder];
}
- (IBAction)dismissKeyboard:(id)sender {
    [textField resignFirstResponder];
}
- (BOOL)textFieldShouldReturn:(UITextField *)myTextField{
    [myTextField resignFirstResponder];
    return YES;
}
@end
