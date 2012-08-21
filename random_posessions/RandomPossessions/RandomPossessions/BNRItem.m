//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Jason Jozwiak on 8/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

// Here we are going to implement the designated initializer defined in the .h file
- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    // Call the superclass's designated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initialized object
    return self;
}

// Since a class inherits all initializers from it's parent class (in this case init), none of
// the stuff we put in the designated initializer will be used if init is called.
// Therefore, we will overide the inherited init method with our own designated initializer.
- (id)init
{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

- (void)setItemName:(NSString *)str
{
    itemName = str;
}

- (NSString *)itemName
{
    return itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}


// This is the class' description method which is inherited from the parent class.
// Because it's inherited it doesn't need to be defined as an instance variable in the .h file
- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
    
    return descriptionString;
}
@end
