//
//  FlipsideViewController.h
//  intro-1
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

//Forward declaration 
@protocol FlipsideViewControllerDelegate;


@interface FlipsideViewController : UIViewController {
	
	// Pointer to object that implements the FlipsideViewControllerDelegate Protocol.
	id <FlipsideViewControllerDelegate> delegate;
	
	IBOutlet UISwitch* drawSwitch;
}

@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;
- (IBAction)done:(id)sender;

@end


// Protocol Declaration
@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

