//
//  SettingsViewController.h
//  Tip
//
//  Created by Jason Huang on 6/12/15.
//  Copyright (c) 2015 Jason Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultRateAmount;

- (IBAction)defaultRateChanged:(id)sender;

@end
