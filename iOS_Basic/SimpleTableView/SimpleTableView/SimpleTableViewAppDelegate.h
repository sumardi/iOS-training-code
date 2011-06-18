//
//  SimpleTableViewAppDelegate.h
//  SimpleTableView
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleTableViewViewController;

@interface SimpleTableViewAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SimpleTableViewViewController *viewController;

@end
