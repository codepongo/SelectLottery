//
//  ViewController.m
//  LottySelecter
//
//  Created by zuohaitao on 15/11/6.
//  Copyright © 2015年 zuohaitao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"The segue id is %@", segue.identifier );
    UIViewController *destination = segue.destinationViewController;
    if ([destination respondsToSelector:@selector(setResult:)])
    {
        [destination setValue:self.redBalls  forKey:@"result"];
    }
}

- (IBAction)select:(id)sender {
    UIButton* s = sender;
    //NSLog(@"%@", s.titleLabel.text);
    [self.redBalls addObject: [NSNumber numberWithInt:s.titleLabel.text.intValue ]];
    self.result.text = [NSString stringWithFormat:@"%@ %@", self.result.text, s.titleLabel.text];

    if (self.redBalls.count == 6) {
        [self performSegueWithIdentifier:@"blue" sender:self];
    }
    s.enabled = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redBalls = [NSMutableArray arrayWithCapacity:6];
    self.result.text = @"";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
