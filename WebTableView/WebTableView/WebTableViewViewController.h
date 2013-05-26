//
//  WebTableViewViewController.h
//  WebTableView
//
//  Created by Jason Jozwiak on 5/25/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebTableViewViewController : UIViewController

@property (strong, nonatomic) NSDictionary *restuarantDetail;

@property (strong, nonatomic) IBOutlet UILabel *restuarantNameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *restuarantImageView;
@property (strong, nonatomic) IBOutlet UITextView *restuarantAddressView;

@end
