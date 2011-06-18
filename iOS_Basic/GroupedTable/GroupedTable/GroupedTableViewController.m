//
//  GroupedTableViewController.m
//  GroupedTable
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "GroupedTableViewController.h"

@implementation GroupedTableViewController

- (void)dealloc
{
    [items release];
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
    
    items = [[NSMutableArray alloc] init];
    
    dictionary = [NSDictionary dictionaryWithObject:[NSArray arrayWithObjects:@"Pakistan",@"China",
                                                      @"Switzerland",@"New Zealand", @"Africa", @"Ireland", 
                                                     @"Japan", @"Afganistan", @"India",nil] forKey:@"Countries"];
    [items addObject:dictionary];
    
    dictionary = [NSDictionary dictionaryWithObject:[NSArray arrayWithObjects:@"Malaysia", @"Singapore", @"Indonesia", @"U.S.A",nil] forKey:@"Countries"];
    [items addObject:dictionary];
    
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

#pragma mark - Table View delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return [items count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[items objectAtIndex:section] objectForKey:@"Countries"] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section == 0) {
        return @"Countries To Visit";
    } else {
        return @"Countries Visited";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    [cell setAccessoryType:UITableViewCellAccessoryDetailDisclosureButton];
    
    cell.textLabel.text = [[[items objectAtIndex:indexPath.section] objectForKey:@"Countries"] objectAtIndex:indexPath.row];
    
    return cell;
}

@end
