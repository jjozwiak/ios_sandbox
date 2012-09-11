//
//  QuizPrototypeViewController.h
//  GA_Quiz_Prototype
//
//  Created by Jason Jozwiak on 9/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizPrototypeViewController : UIViewController
{
    NSString *answer;
    NSMutableArray *answers;
}

- (IBAction)answerPressed:(UIButton *)sender;

@end
