//
//  singleViewViewController.h
//  QuickConnections
//
//  Created by Jason Jozwiak on 1/12/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface singleViewViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;


- (IBAction)buttonPressed:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;

@end
