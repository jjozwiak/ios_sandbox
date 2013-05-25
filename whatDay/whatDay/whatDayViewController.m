//
//  whatDayViewController.m
//  whatDay
//
//  Created by Jason Jozwiak on 1/13/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import "whatDayViewController.h"

@interface whatDayViewController ()

@end

@implementation whatDayViewController
@synthesize setDate;

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

- (IBAction)getDay:(id)sender {
    
    //Get the date from the date picker
    NSDate *dateChosen = setDate.date;
    
    //Now let's format the date with unicode formatting.
    NSDateFormatter *formattedDate = [[NSDateFormatter alloc] init];
    
    [formattedDate setDateFormat:@"EEEE"];
    
    NSString *weekday = [formattedDate stringFromDate:dateChosen];
    
    
    //Create the string that we will pass to the alert
    NSString *alertMessage = [[NSString alloc] initWithFormat:@"That was a %@", weekday];
    
    UIAlertView *dayAlert = [[UIAlertView alloc] initWithTitle:@"Here's the day"
                                            message:alertMessage
                                            delegate:nil
                                            cancelButtonTitle:@"thanks!"
                                            otherButtonTitles: nil];
    [dayAlert show];
    
}
@end
