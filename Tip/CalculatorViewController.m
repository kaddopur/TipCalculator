//
//  CalculatorViewController.m
//  Tip
//
//  Created by Jason Huang on 6/12/15.
//  Copyright (c) 2015 Jason Huang. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self resetRateDefault];
    [self displayTheKeyboard];
}

- (void)displayTheKeyboard {
    [self.billAmount becomeFirstResponder];
}

- (void)dismissTheKeyboard {
    [self.billAmount resignFirstResponder];
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

- (IBAction)billAmountChanged:(id)sender {
    [self renderResult];
}

- (IBAction)tipRateChanged:(id)sender {
    [self renderResult];
}

- (void)resetRateDefault {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    long defaultRateIndex = [defaults integerForKey:@"default_rate_index"];
    
    self.tipRateAmount.selectedSegmentIndex = defaultRateIndex;
}

- (void)renderResult {
    float billValue = self.billAmount.text.floatValue;
    float tipRateValue = self.tipRateAmount.selectedSegmentIndex * 0.05 + 0.1;
    
    float tipValue = billValue * tipRateValue;
    float totalValue = billValue + tipValue;
    
    self.tipAmount.text = [NSString stringWithFormat:@"%.2f", tipValue];
    self.totalAmount.text = [NSString stringWithFormat:@"%.2f", totalValue];
}

@end
