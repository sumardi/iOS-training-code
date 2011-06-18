//
//  UserInputViewController.m
//  UserInput
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "UserInputViewController.h"

@implementation UserInputViewController

@synthesize messageLbl, goBtn, nameTxtField;

- (void)dealloc
{
    [messageLbl release];
    [goBtn release];
    [nameTxtField release];
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

- (BOOL)textFieldShouldReturn:(UITextField *)textField 
{
    [nameTxtField resignFirstResponder];
    NSString *msg = [[NSString alloc] initWithFormat:@"Hello, %@!",nameTxtField.text];
	[messageLbl setText:msg];
	[msg release];
    return YES;
}

#pragma mark - IBAction

- (IBAction)goBtnPressed:(id)sender 
{
    [nameTxtField resignFirstResponder];
    NSString *msg = [[NSString alloc] initWithFormat:@"Hello, %@!",nameTxtField.text];
	[messageLbl setText:msg];
	[msg release];
}

- (IBAction)makeKeyboardGoAway
{
    [nameTxtField resignFirstResponder];
}

@end
