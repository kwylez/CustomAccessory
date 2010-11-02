//
//  CustomAccessoryAppDelegate.h
//  CustomAccessory
//
//  Created by Cory Wiles on 10/8/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomAccessoryViewController;

@interface CustomAccessoryAppDelegate : NSObject <UIApplicationDelegate> {
  UIWindow *window;
  CustomAccessoryViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CustomAccessoryViewController *viewController;

@end
