//
//  DetailViewController.h
//  SimpleNavigation
//
//  Created by Sumardi Shukor on 6/19/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController {
    NSString *selectedName;
    UILabel *lblText;
}

@property (nonatomic, retain) NSString *selectedName;
@property (nonatomic, retain) IBOutlet UILabel *lblText;

@end
