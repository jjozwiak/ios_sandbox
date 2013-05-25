//
//  TableViewController.m
//  WebTableView
//
//  Created by Jason Jozwiak on 5/25/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import "TableViewController.h"
//#import "AFNetworking.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   // [self makeRestuarantRequests];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)makeRestuarantRequests
//{
//    NSURL *url = [NSURL URLWithString:@"https://maps.googleapis.com/maps/api/place/textsearch/json?query=restuarants+in+sydney&sensor=false&key=AIzaSyCEQ1N64QqiRu66GmWVLKYZ6pam_xxBVmQ"];
//    
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    //AFNetworking asynchronous url request
//    AFJSONRequestOperation *operation = [AFJSONRequestOperation
//                                         JSONRequestOperationWithRequest:request
//                                         success:^(NSURLRequest *request, NSHTTPURLResponse *response, id responseObject)
//                                         {
//                                             NSLog(@"JSON RESULT %@", responseObject);
//                                             
//                                         }
//                                         failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id responseObject)
//                                         {
//                                             NSLog(@"Request Failed: %@, %@", error, error.userInfo);
//                                         }];
//    
//    [operation start];
//    
//}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:  (NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

@end
