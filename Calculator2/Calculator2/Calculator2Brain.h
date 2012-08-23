//
//  Calculator2Brain.h
//  Calculator2
//
//  Created by Jason Jozwiak on 8/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator2Brain : NSObject

- (void)pushOperand: (double)operand;
- (double)performOperation: (NSString *)operation;

@end
