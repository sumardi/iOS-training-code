//
//  BasicUIViewController.h
//  BasicUI
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicUIViewController : UIViewController {
    UIButton *alertBtn;
}

@property (nonatomic, retain) IBOutlet UIButton *alertBtn;

-(IBAction) alertBtnPressed:(id) sender;

@end
