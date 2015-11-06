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
        [destination setValue:self.result.text  forKey:@"result"];
    }
}

- (IBAction)select:(id)sender {
    UIButton* s = sender;
    //NSLog(@"%@", s.titleLabel.text);
    self.countOfRedBalls += 1;
    if (self.countOfRedBalls < 6) {
        self.result.text = [NSString stringWithFormat:@"%@ %@",self.result.text, s.titleLabel.text];
        
    }
    else {
        self.result.text = [NSString stringWithFormat:@"%@ %@",self.result.text, s.titleLabel.text];
        [self performSegueWithIdentifier:@"blue" sender:self];
    }
    s.enabled = NO;
    NSLog(@"%@", self.result.text);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.result.text = @"";
    self.countOfRedBalls = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
