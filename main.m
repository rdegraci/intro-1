//
//  main.m
//  intro-1
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
	// The NSAutoreleasePool class is used to support Cocoa’s reference-counted memory management system.
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// This function is called in the main entry point to create the application object and the application delegate and set up the event cycle.
    int retVal = UIApplicationMain(argc, argv, nil, nil);	//returns when the App exits
	
    [pool release];
	
    return retVal;
}
