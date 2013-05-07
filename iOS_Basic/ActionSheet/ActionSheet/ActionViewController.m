//
//  ViewController.m
//  ActionSheet
//
//  Created by Sumardi Shukor on 5/8/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import "ActionViewController.h"

@interface ActionViewController ()

@end

@implementation ActionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapBtnPressed:(UIButton *)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Title Here" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Remove" otherButtonTitles:@"Option 1", @"Option 2", nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Remove button clicked!");
            break;
            
        case 1:
            NSLog(@"Option 1 button clicked!");
            break;
            
        case 2:
            NSLog(@"Option 2 button clicked!");
            break;
            
        default:
            NSLog(@"Cancel button clicked");
            break;
    }
}

@end
