//
//  CWCustomAccessoryView.m
//  CustomAccessory
//
//  Created by Cory Wiles on 10/8/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "CWCustomAccessoryView.h"

#define kSize 25.0f
#define kArrowLeftPadding 3
#define kArrowLineWidth 2

@implementation CWCustomAccessoryView

@synthesize accessoryColor = _accessoryColor;
@synthesize strokeColor    = _strokeColor;
@synthesize arrowColor     = _arrowColor;

- (id)initWithFrame:(CGRect)frame {
  
  if ((self = [super initWithFrame:frame])) {
    self.backgroundColor = [UIColor clearColor];
  }
  
  return self;
}

- (void)dealloc {
	[_accessoryColor release];
  [_strokeColor release];
  [_arrowColor release];
  [super dealloc];
}

+ (CWCustomAccessoryView *)accessoryWithColor:(UIColor *)color {
	
  CWCustomAccessoryView *ret = [[[CWCustomAccessoryView alloc] initWithFrame:CGRectMake(0, 0, kSize, kSize)] autorelease];

  ret.accessoryColor = color;
  
	return ret;
}

+ (CWCustomAccessoryView *)accessoryWithColor:(UIColor *)color accessoryStrokeColor:(UIColor *)sColor {

	CWCustomAccessoryView *ret = [[[CWCustomAccessoryView alloc] initWithFrame:CGRectMake(0, 0, kSize, kSize)] autorelease];
	
  ret.accessoryColor = color;
  ret.strokeColor    = sColor;
  
	return ret;
}

+ (CWCustomAccessoryView *)accessoryWithColor:(UIColor *)color accessoryStrokeColor:(UIColor *)sColor accessoryArrowColor:(UIColor *)aColor {
	
  CWCustomAccessoryView *ret = [[[CWCustomAccessoryView alloc] initWithFrame:CGRectMake(0, 0, kSize, kSize)] autorelease];
	
  ret.accessoryColor = color;
  ret.strokeColor    = sColor;
  ret.arrowColor     = aColor;

	return ret;
}

- (void)drawRect:(CGRect)rect {
  
  CGRect smallerRectangle = CGRectInset(self.bounds, 2, 2);  
  
  CGContextRef ctx = UIGraphicsGetCurrentContext();

  CGContextSetFillColorWithColor(ctx, self.accessoryColor.CGColor);
  CGContextFillEllipseInRect(ctx, smallerRectangle);
  
  CGContextStrokePath(ctx);
  CGContextSetFillColorWithColor(ctx, self.strokeColor.CGColor);
  CGContextStrokeEllipseInRect(ctx, smallerRectangle);
  
  CGFloat x = CGRectGetMidY(smallerRectangle) + kArrowLeftPadding;
	CGFloat y = CGRectGetMidY(smallerRectangle);
	
  const CGFloat R = 4.5;

	CGContextMoveToPoint(ctx, x - R, y - R);
	CGContextAddLineToPoint(ctx, x, y);
	CGContextAddLineToPoint(ctx, x - R, y + R);
	CGContextSetLineCap(ctx, kCGLineCapSquare);
	CGContextSetLineJoin(ctx, kCGLineJoinMiter);
	CGContextSetLineWidth(ctx, kArrowLineWidth);
  CGContextSetStrokeColorWithColor(ctx, self.arrowColor.CGColor);
  CGContextStrokePath(ctx);
}

- (void)setHighlighted:(BOOL)highlighted {

	[super setHighlighted:highlighted];
  
	[self setNeedsDisplay];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (UIColor *)accessoryColor {

	if (!_accessoryColor) {
		return [UIColor blackColor];
  }
  
	return _accessoryColor;
}

- (UIColor *)strokeColor {
  
	if (!_strokeColor) {
		return [UIColor blueColor];
  }
  
	return _strokeColor;
}

- (UIColor *)arrowColor {
  
	if (!_arrowColor) {
		return _strokeColor;
  }
  
	return _arrowColor;
}

@end
