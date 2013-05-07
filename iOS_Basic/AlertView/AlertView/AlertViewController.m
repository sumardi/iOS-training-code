//
//  ViewController.m
//  AlertView
//
//  Created by Sumardi Shukor on 5/8/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert Me" message:@"Here is your message" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [alert show];
}

#pragma mark - Alert view delegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Cancel button tapped!");
            break;
            
        case 1:
            NSLog(@"OK button tapped!");
            break;
            
        default:
            NSLog(@"Unknown");
            break;
    }
}

@end
