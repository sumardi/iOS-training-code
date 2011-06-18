//
//  ControlsViewController.h
//  Controls
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ControlsViewController : UIViewController {
	IBOutlet UISegmentedControl *colorChooser;
	IBOutlet UITextView *sampleText;
}
@property (nonatomic, retain) UISegmentedControl *colorChooser;
@property (nonatomic, retain) UITextView *sampleText;

-(IBAction) colorChanged;

@end

