//
//  HypnoViewController.m
//  HypnoTime
//
//  Created by Jason Jozwiak on 9/19/12.
//  Copyright (c) 2012 Jason Jozwiak. All rights reserved.
//

#import "HypnoViewController.h"
#import "HypnosisView.h"

@interface HypnoViewController ()

@end

@implementation HypnoViewController

- (void)loadView
{
    // Create a view
    CGRect frame = [[UIScreen mainScreen] bounds];
    
    HypnosisView *v = [[HypnosisView alloc] initWithFrame:frame];
    
    // Set it as *the* view of this view controller
    [self setView:v];
}

@end
