//
//  FlipsideViewController.m
//  intro-1
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import "FlipsideViewController.h"


@implementation FlipsideViewController

@synthesize delegate;


- (void)viewDidLoad {
	NSLog(@"FlipsideViewController - (void)viewDidLoad");
	
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];      
	
	drawSwitch.on = false;
}


- (IBAction)done:(id)sender {
	NSLog(@"FlipsideViewController - (IBAction)done:(id)sender");
	
	[self.delegate flipsideViewControllerDidFinish:self];	
}


- (void)didReceiveMemoryWarning {
	
	NSLog(@"FlipsideViewController - (void)didReceiveMemoryWarning");
	
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
	NSLog(@"FlipsideViewController - (void)viewDidUnload");
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)dealloc {
	NSLog(@"FlipsideViewController - (void)dealloc");
    [super dealloc];
}


@end
