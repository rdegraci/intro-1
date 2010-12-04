//
//  MainViewController.m
//  intro-1
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
}
*/


- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {

    NSLog(@"- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller ");
	
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo:(id)sender {    

	NSLog(@"MainViewController - (IBAction)showInfo:(id)sender");
	
	
	//Returns a newly initialized view controller using the NIB file "FlipsideView.xib"
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	
	controller.delegate = self;
	
	//Horizontal flip
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}


- (void)didReceiveMemoryWarning {
	
	NSLog(@"- (void)didReceiveMemoryWarning ");
	
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
	
	NSLog(@"- (void)viewDidUnload ");
	
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)dealloc {
	NSLog(@"MainViewController - (void)dealloc");
	
    [super dealloc];
}


- (IBAction)changeTheLabel:(id)sender {
	
	theLabel.text = @"I am the different.";
	
}
@end
