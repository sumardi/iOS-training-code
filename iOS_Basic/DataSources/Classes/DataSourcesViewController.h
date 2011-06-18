//
//  DataSourcesViewController.h
//  DataSources
//
//  Created by Sumardi Shukor on 6/18/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataSourcesViewController : UIViewController 
<UIPickerViewDelegate, UIPickerViewDataSource> {
	NSArray *moods;
	IBOutlet UIPickerView *moodPicker;
}
@property (nonatomic, retain) UIPickerView *moodPicker;
@end

