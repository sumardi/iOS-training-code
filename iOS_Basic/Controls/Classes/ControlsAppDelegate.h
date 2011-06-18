//
//  ControlsAppDelegate.h
//  Controls
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ControlsViewController;

@interface ControlsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ControlsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ControlsViewController *viewController;

@end

