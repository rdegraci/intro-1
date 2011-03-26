//
//  intro_1AppDelegate.m
//  intro-1
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import "intro_1AppDelegate.h"
#import "MainViewController.h"

#import <CoreLocation/CoreLocation.h>
#import <CoreLocation/CLLocationManager.h>
#import "LocationManagerDelegate.h"

@implementation intro_1AppDelegate

// Create the getters/setters
@synthesize window;
@synthesize mainViewController;
@synthesize locationManager;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	NSLog(@"- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions");
	
    // Override point for customization after application launch.  
	
	self.locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = locationManagerDelegate;

    // Add the main view controller's view to the window and display.
    [window addSubview:mainViewController.view];
    [window makeKeyAndVisible];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
	
	NSLog(@"- (void)applicationWillResignActive:(UIApplication *)application ");
	
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
	
	if ([CLLocationManager locationServicesEnabled] == YES) {
		[locationManager stopUpdatingLocation];
	}
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
	
	NSLog(@"- (void)applicationDidEnterBackground:(UIApplication *)application");
	
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
	
	NSLog(@"- (void)applicationWillEnterForeground:(UIApplication *)application");
	
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	
	NSLog(@"- (void)applicationDidBecomeActive:(UIApplication *)application");
	
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
	
	if ([CLLocationManager locationServicesEnabled] == YES) {
		locationManager.distanceFilter = 15.0;	//about 50 feet
		[locationManager startUpdatingLocation];
	}
}


- (void)applicationWillTerminate:(UIApplication *)application {
	
	NSLog(@"- (void)applicationWillTerminate:(UIApplication *)application");
	
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
	
	self.locationManager = nil;
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
	
	NSLog(@"- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application");
	
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	
	NSLog(@"intro_1AppDelegate - (void)dealloc");
	
    [mainViewController release];
    [window release];
    [super dealloc];
}

@end
