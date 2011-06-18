//
//  BasicUIViewController.m
//  BasicUI
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "BasicUIViewController.h"

@implementation BasicUIViewController

@synthesize alertBtn;

- (void)dealloc
{
    [alertBtn release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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

#pragma mark - IBAction

- (IBAction)alertBtnPressed:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] 
						  initWithTitle:@"Here's the title" 
						  message:@"Here's the alert message" 
						  delegate:nil 
						  cancelButtonTitle:@"Okay" 
						  otherButtonTitles:nil];
	[alert show];
	[alert release];
}

@end
