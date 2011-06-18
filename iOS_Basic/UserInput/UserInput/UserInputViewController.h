//
//  UserInputViewController.h
//  UserInput
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserInputViewController : UIViewController {
    UILabel *messageLbl;
    UIButton *goBtn;
    UITextField *nameTxtField;
}

@property (nonatomic, retain) IBOutlet UILabel *messageLbl;
@property (nonatomic, retain) IBOutlet UIButton *goBtn;
@property (nonatomic, retain) IBOutlet UITextField *nameTxtField;

- (IBAction)goBtnPressed:(id) sender;
- (IBAction)makeKeyboardGoAway;

@end
