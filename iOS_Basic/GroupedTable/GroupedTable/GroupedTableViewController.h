//
//  GroupedTableViewController.h
//  GroupedTable
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupedTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSDictionary *dictionary;
    NSMutableArray *items;
}

@end
