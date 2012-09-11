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

//Ok you clearly don't use init in a view controller.
//Any initialization you need to run should go in the viewDidLoad
//This took a LONG time to figure out but I will NOT forget it!!!!!!

/*- (id)init
{
    self = [super init];
    if (self) {
        //answers = [[NSMutableArray alloc] init ];
    }
    return self;
}*/

- (IBAction)answerPressed:(UIButton *)sender
{
    answer = [[sender titleLabel] text];
    
    [answers addObject:answer];
    
    for (int i = 0; i < [answers count]; i++) {
        
        NSLog(@"This is the answer %@",[answers objectAtIndex:i]);
        
    }
    
    NSLog(@"%@", answers);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    answers = [[NSMutableArray alloc] init ];
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
