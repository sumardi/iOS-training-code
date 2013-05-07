//
//  BtnImgViewController.m
//  ButtonImage
//
//  Created by Sumardi Shukor on 5/8/13.
//  Copyright (c) 2013 Software Machine Development. All rights reserved.
//

#import "BtnImgViewController.h"

@interface BtnImgViewController ()

@end

@implementation BtnImgViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIImage *buttonImageNormal = [UIImage imageNamed:@"blueButton.png"];
    UIEdgeInsets insets = UIEdgeInsetsMake(0, 12, 0, 12);
    UIImage *stretchableButtonImageNormal = [buttonImageNormal
                                             resizableImageWithCapInsets:insets];
    [self.blueBtn setBackgroundImage:stretchableButtonImageNormal
                                      forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)blueBtnPressed:(UIButton *)sender
{
    NSLog(@"Button clicked! : %@", sender);
}

@end
