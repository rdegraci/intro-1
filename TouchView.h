//
//  TouchView.h
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface TouchView : UIView {

	NSMutableArray* penPoints;
	BOOL draw;
}
@property (readwrite, nonatomic, retain) NSMutableArray* penPoints;

- (IBAction)toggleDraw:(id)sender;
@end
