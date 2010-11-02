//
//  CustomAccessoryViewController.m
//  CustomAccessory
//
//  Created by Cory Wiles on 10/8/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "CustomAccessoryViewController.h"
#import "CWCustomAccessoryView.h"

@implementation CustomAccessoryViewController

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
  if (cell == nil) {
      
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    
    CWCustomAccessoryView *accessory = [CWCustomAccessoryView accessoryWithColor:[UIColor redColor] accessoryStrokeColor:[UIColor blackColor]];
    
    [accessory addTarget:self action:@selector(tableView:accessoryButtonTappedForRowWithIndexPath:) forControlEvents:UIControlEventTouchUpInside];
    
    cell.accessoryView = accessory;
  }
  
  cell.textLabel.text = @"Cory Custom Dislosure Button";
    
  return cell;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
  NSLog(@"I am called");
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {

}

- (void)dealloc {
  [super dealloc];
}


@end

