//
//  SettingsViewController.m
//  Tip
//
//  Created by Jason Huang on 6/12/15.
//  Copyright (c) 2015 Jason Huang. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    long defaultRateIndex = [defaults integerForKey:@"default_rate_index"];
    
    self.defaultRateAmount.selectedSegmentIndex = defaultRateIndex;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)defaultRateChanged:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultRateAmount.selectedSegmentIndex forKey:@"default_rate_index"];
    [defaults synchronize];
}
@end
