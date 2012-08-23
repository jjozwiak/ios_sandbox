//
//  Calculator2Brain.m
//  Calculator2
//
//  Created by Jason Jozwiak on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Calculator2Brain.h"

//make private property that is an array holding our operandStack
@interface Calculator2Brain()
@property (nonatomic, strong) NSMutableArray *operandStack;
@end

@implementation Calculator2Brain

//synthesizing the property operandStack creates its setter and getter methods
@synthesize operandStack = _operandStack;

//Although synthesizing a property creates it's setters and getters, we will
//hav to overwrite the getter so it is never nil
- (NSMutableArray *)operandStack
{
    if (_operandStack == nil) {
        _operandStack = [[NSMutableArray alloc] init];

    }
    return _operandStack;
}

- (void)setOperandStack:(NSMutableArray *)operandStack
{
    _operandStack = operandStack;
}

- (void)pushOperand: (double)operand
{
    // Before we pass the operand to addObject we need to make it an
    // object.  We cannot pass a primitive datatype like double to addObject
    // so we'll make it an object using NSNumber numberWithDouble. This can
    // also be rewritten to one line
    NSNumber *operandObject = [NSNumber numberWithDouble:operand];
    [self.operandStack addObject:operandObject];
}
- (double)popOperand
{
    NSNumber *operandObject = [self.operandStack lastObject];
    if (operandObject != nil) [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}
- (double)performOperation: (NSString *)operation
{
    double result = 0;
    
    if ([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    } else if ([@"*" isEqualToString:operation]){
        result = [self popOperand] * [self popOperand];
    }
    
    [self pushOperand:result];
    
    return result;
}

@end
