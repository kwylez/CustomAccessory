//
//  CWCustomAccessoryView.h
//  CustomAccessory
//
//  Created by Cory Wiles on 10/8/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CWCustomAccessoryView : UIControl {

  UIColor *_accessoryColor;
  UIColor *_strokeColor;
  UIColor *_arrowColor;
}

@property (nonatomic, retain) UIColor *accessoryColor;
@property (nonatomic, retain) UIColor *strokeColor;
@property (nonatomic, retain) UIColor *arrowColor;

+ (CWCustomAccessoryView *)accessoryWithColor:(UIColor *)color;
+ (CWCustomAccessoryView *)accessoryWithColor:(UIColor *)color accessoryStrokeColor:(UIColor *)sColor;
+ (CWCustomAccessoryView *)accessoryWithColor:(UIColor *)color accessoryStrokeColor:(UIColor *)sColor accessoryArrowColor:(UIColor *)aColor;

@end
