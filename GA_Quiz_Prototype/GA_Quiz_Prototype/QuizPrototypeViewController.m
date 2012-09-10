//
//  QuizPrototypeViewController.m
//  GA_Quiz_Prototype
//
//  Created by Jason Jozwiak on 9/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QuizPrototypeViewController.h"

@interface QuizPrototypeViewController ()

@end

@implementation QuizPrototypeViewController


- (IBAction)answerPressed:(UIButton *)sender
{
    NSMutableArray *answers = [[NSMutableArray alloc] init];
    NSString *answer = [[sender titleLabel] text];
    
    [answers addObject:answer];
    
    for (int i = 0; i < [answers count]; i++) {
        NSLog(@"%@", [answers objectAtIndex:i]);
    }
    
    //NSString *answer = [[sender titleLabel] text];
    
    //NSLog(answer);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
