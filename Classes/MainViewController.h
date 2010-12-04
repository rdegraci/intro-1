//
//  MainViewController.h
//  intro-1
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import "FlipsideViewController.h"


//The UIViewController class provides the fundamental view-management model for iPhone applications. 
@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {
	
	IBOutlet UILabel* theLabel;
}
- (IBAction)showInfo:(id)sender;
- (IBAction)changeTheLabel:(id)sender;
@end

