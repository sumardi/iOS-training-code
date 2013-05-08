//
//  CDNewViewController.m
//  CoreDataBasic
//
//  Created by Sumardi Shukor on 5/8/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import "CDNewViewController.h"
#import "CDAppDelegate.h"
#import "Student.h"

@interface CDNewViewController ()

@end

@implementation CDNewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.nameTxtField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelBtnPressed:(UIBarButtonItem *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.nameTxtField resignFirstResponder];
    [self insertStudent:textField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    return YES;
}

#pragma mark - Insert data

- (void)insertStudent:(NSString *)name
{
    CDAppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    Student *student = (Student *)[NSEntityDescription insertNewObjectForEntityForName:@"Student" inManagedObjectContext:appDelegate.managedObjectContext];
    student.name = name;
    [appDelegate saveContext];
}

@end
