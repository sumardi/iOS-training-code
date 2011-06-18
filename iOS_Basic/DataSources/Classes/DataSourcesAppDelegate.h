//
//  DataSourcesAppDelegate.h
//  DataSources
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataSourcesViewController;

@interface DataSourcesAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DataSourcesViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DataSourcesViewController *viewController;

@end

