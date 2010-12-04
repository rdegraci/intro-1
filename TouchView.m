//
//  TouchView.m
//
//  Created by Rodney Degracia on 12/3/10.
//  Copyright 2010 Venture Intellectual LLC. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

@synthesize penPoints;

- (id)init {
	
	if (self = [super init]) {
		draw = NO;
	}
	
	return self;
}

- (IBAction)toggleDraw:(id)sender {
	draw = (draw == NO);
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event");
	
	if (draw == NO) {
		return;
	}
	
	self.penPoints = [NSMutableArray array];
	
	CGPoint pt = [[touches anyObject]locationInView:self];
	[self.penPoints addObject:[NSValue valueWithCGPoint:pt]];
	
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	
	NSLog(@"- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event");
	
	if (draw == NO) {
		return;
	}
	
	
	CGPoint pt = [[touches anyObject]locationInView:self];
	[self.penPoints addObject:[NSValue valueWithCGPoint:pt]];
	
	[self setNeedsDisplay];	//ask the view to redraw
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event");
	
	if (draw == NO) {
		return;
	}
	CGPoint pt  = [[touches anyObject]locationInView:self];
	[self.penPoints addObject:[NSValue valueWithCGPoint:pt]];
		
}

- (void)drawRect:(CGRect)rect {
	NSLog(@"- (void)drawRect:(CGRect)rect");
	
	if (draw == NO) {
		return;
	}
	if (penPoints.count < 2) {
		return;
	}
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	[[UIColor whiteColor] set];
	CGContextSetLineWidth(context, 4.0f);
	
	for (int i = 0; i < penPoints.count - 1;  i++) {
		CGPoint pt1;
		[[penPoints objectAtIndex:i] getValue:&pt1];
		CGPoint pt2;
		[[penPoints objectAtIndex:i+1] getValue:&pt2];
		
		CGContextMoveToPoint(context, pt1.x, pt1.y);
		CGContextAddLineToPoint(context, pt2.x, pt2.y);
		CGContextStrokePath(context);
	}
}


@end
