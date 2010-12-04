//
//  LocationManagerDelegate.m
//
//  Created by Rodney Degracia on 11/25/10.
//  Copyright 2010 Elven Labs Software Development. All rights reserved.
//

#import "LocationManagerDelegate.h"


@implementation LocationManagerDelegate



- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	
	NSLog(@"didUpdateToLocation %+.6f, %+.6f", newLocation.coordinate.latitude, newLocation.coordinate.longitude);
	
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
	NSLog(@"Error = %@", error.localizedDescription);
}



@end
