//
//  TimeViewController.h
//  HypnoTime
//
//  Created by Jason Jozwiak on 9/19/12.
//  Copyright (c) 2012 Jason Jozwiak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
}
- (IBAction)showCurrentTime:(id)sender;

@end
