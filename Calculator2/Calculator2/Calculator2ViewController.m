//
//  Calculator2ViewController.m
//  Calculator2
//
//  Created by Jason Jozwiak on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Calculator2ViewController.h"
#import "Calculator2Brain.h"

@interface Calculator2ViewController ()

//private property
@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;
@end

@implementation Calculator2ViewController

@synthesize display = _display;
@synthesize userIsInTheMiddleOfEnteringANumber = _userIsInTheMiddleOfEnteringANumber;

- (IBAction)digitPressed:(UIButton *)sender 
{
    NSString *digit = sender.currentTitle;
    
    /*UILabel *myDisplay = self.display; //[self display];
    NSString *currentText = myDisplay.text; //[myDisplay text];
    NSString *newText = [currentText stringByAppendingString:digit];
    //[myDisplay setText:newText];
    myDisplay.text = newText;*/
    
    if (self.userIsInTheMiddleOfEnteringANumber) {
        self.display.text = [self.display.text stringByAppendingString:digit];
        self.userIsInTheMiddleOfEnteringANumber = NO;
    } else {
        self.display.text = digit;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
    
    //NSLog(@"The value of the bool is %@\n", _userIsInTheMiddleOfEnteringANumber);
}
- (IBAction)enterPressed {
}

- (IBAction)operationPressed:(id)sender {
}

@end
