//
//  whatDayViewController.h
//  whatDay
//
//  Created by Jason Jozwiak on 1/13/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface whatDayViewController : UIViewController

- (IBAction)getDay:(id)sender;

@property (weak, nonatomic) IBOutlet UIDatePicker *setDate;

@end
