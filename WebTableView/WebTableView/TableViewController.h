//
//  TableViewController.h
//  WebTableView
//
//  Created by Jason Jozwiak on 5/25/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController <UITableViewDataSource>

@property (strong, nonatomic) NSArray *googlePlacesArrayFromAFNetworking;
@property (strong, nonatomic) NSArray *finishedGooglePlacesArray;

@end
