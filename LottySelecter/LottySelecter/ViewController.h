//
//  ViewController.h
//  LottySelecter
//
//  Created by zuohaitao on 15/11/6.
//  Copyright © 2015年 zuohaitao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(IBAction)select:(id)sender;
//@property int countOfRedBalls;
@property NSMutableArray* redBalls;
@property IBOutlet UILabel* result;
@end

