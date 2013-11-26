//
//  proposal2ViewController.m
//  proposal2
//
//  Created by Jason Jozwiak on 8/25/13.
//  Copyright (c) 2013 com.jasonjozwiak. All rights reserved.
//

#import "proposal2ViewController.h"
#define numberOfSections 1

@interface proposal2ViewController ()

@end

@implementation proposal2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.phrases = @[@"Tools", @"Transport", @"Accomodation", @"Communications & Banking", @"Sightseeing", @"Shopping", @"Greeting People", @"Entertainment", @"Food & Drink", @"Emergencies", @"Health"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.phrases count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"phrase"];
    cell.textLabel.text = [self.phrases    objectAtIndex:indexPath.row];
    
    return cell;
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return numberOfSections;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Categories";
}

@end
