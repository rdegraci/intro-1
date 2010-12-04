//
//  intro_1AppDelegate.h
//  intro-1
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;
@class CLLocationManager;
@class LocationManagerDelegate;
// The UIApplicationDelegate protocol declares methods that are implemented by the delegate of the singleton UIApplication object. 
@interface intro_1AppDelegate : NSObject <UIApplicationDelegate> {
	
    UIWindow *window;
	
    MainViewController *mainViewController;
	
	CLLocationManager* locationManager;
	IBOutlet LocationManagerDelegate* locationManagerDelegate;
}
@property (nonatomic, retain) CLLocationManager* locationManager;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end

