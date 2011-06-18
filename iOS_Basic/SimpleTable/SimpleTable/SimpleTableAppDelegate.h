//
//  SimpleTableAppDelegate.h
//  SimpleTable
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleTableViewController;

@interface SimpleTableAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimpleTableViewController *viewController;

@end
