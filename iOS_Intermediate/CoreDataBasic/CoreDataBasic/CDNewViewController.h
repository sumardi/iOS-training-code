//
//  CDNewViewController.h
//  CoreDataBasic
//
//  Created by Sumardi Shukor on 5/8/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDNewViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTxtField;

- (IBAction)cancelBtnPressed:(UIBarButtonItem *)sender;

@end
