//
//  GroupedTableAppDelegate.h
//  GroupedTable
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GroupedTableViewController;

@interface GroupedTableAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet GroupedTableViewController *viewController;

@end
