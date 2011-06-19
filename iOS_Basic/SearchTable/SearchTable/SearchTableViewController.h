//
//  SearchTableViewController.h
//  SearchTable
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate> {
    
    NSMutableArray *countries;
    NSMutableArray *copyCountries;
    UISearchBar *searchBar;
    UITableView *tableView;
    BOOL isSearching;
}

@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;
@property (nonatomic, retain) IBOutlet UITableView *tableView;

@end
