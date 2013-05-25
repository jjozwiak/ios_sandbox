//
//  singleViewAppDelegate.h
//  QuickConnections
//
//  Created by Jason Jozwiak on 1/12/13.
//  Copyright (c) 2013 Jason Jozwiak. All rights reserved.
//

#import <UIKit/UIKit.h>

@class singleViewViewController;

@interface singleViewAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) singleViewViewController *viewController;

@end
