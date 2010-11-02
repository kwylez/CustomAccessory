//
//  CustomAccessoryAppDelegate.m
//  CustomAccessory
//
//  Created by Cory Wiles on 10/8/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "CustomAccessoryAppDelegate.h"

#import "CustomAccessoryViewController.h"

@implementation CustomAccessoryAppDelegate


@synthesize window;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  // Override point for customization after application launch.
   
  [window addSubview:viewController.view];
  [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

  // Save data if appropriate.
}

- (void)dealloc {

  [window release];
  [viewController release];
    [super dealloc];
}

@end
