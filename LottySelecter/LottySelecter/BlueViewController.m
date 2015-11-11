//
//  BlueViewController.m
//  LottySelecter
//
//  Created by zuohaitao on 15/11/7.
//  Copyright © 2015年 zuohaitao. All rights reserved.
//

#import "BlueViewController.h"

@implementation BlueViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"The segue id is %@", segue.identifier );
    UIViewController *destination = segue.destinationViewController;
    
    [destination setValue:self.blue  forKey:@"blueBall"];
    
    
    [destination setValue:self.result  forKey:@"redBalls"];
    
}

- (IBAction)select:(id)sender {
    if (self.blue != nil) {
        return;
    }
    UIButton* s = sender;
    self.blue = s.titleLabel.text;

    [self performSegueWithIdentifier:@"result" sender:self];
    
}
@end
