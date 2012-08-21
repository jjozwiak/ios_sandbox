//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Jason Jozwiak on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

// The interface is where we define a class' instance variables
// and methods. Methods are only defined here while the logic
// for methods are written in th .m file
@interface BNRItem : NSObject

// Here are the instance variables
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

// Here we will define a designated initializer
- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;

// And these are the methods
// Here we have getters and setters. While string setter methods begin
// with set i.e. setItemName, a string getter method is simply the name
// of it's instance variable.
- (void)setItemName: (NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)i;
- (int)valueInDollars;

- (NSDate *)dateCreated;
@end
