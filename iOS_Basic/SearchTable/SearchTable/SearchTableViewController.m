//
//  SearchTableViewController.m
//  SearchTable
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "SearchTableViewController.h"

@implementation SearchTableViewController

@synthesize searchBar, tableView;

- (void)dealloc
{
    [countries release];
    [copyCountries release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *myFile = [[NSBundle mainBundle] pathForResource:@"countries" ofType:@"plist"];
    
    countries = [[NSMutableArray alloc] initWithContentsOfFile:myFile];
    
    copyCountries = [[NSMutableArray alloc] init];
    isSearching = NO;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

# pragma mark - Table View delegates

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(isSearching) {
        return [copyCountries count];
    } else {
        return [countries count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    if(isSearching) {
        cell.textLabel.text = [copyCountries objectAtIndex:indexPath.row];
    } else {
        cell.textLabel.text = [countries objectAtIndex:indexPath.row];
    }
    
    return cell;
}

#pragma mark - Search bar delegates

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    [copyCountries removeAllObjects];
    
    if([self.searchBar.text isEqualToString:@""]) {
        isSearching = NO;
    } else {
        isSearching = YES;
        NSPredicate *sPredicate = [NSPredicate predicateWithFormat:@"SELF contains %@", searchText];
        NSArray *filteredCountries = [countries filteredArrayUsingPredicate:sPredicate];
        [copyCountries addObjectsFromArray:filteredCountries];
    }
    [tableView reloadData];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [self.searchBar resignFirstResponder];
}

@end
