//
//  ResultViewController.m
//  LottySelecter
//
//  Created by zuohaitao on 15/11/7.
//  Copyright © 2015年 zuohaitao. All rights reserved.
//

#import "ResultViewController.h"

NSInteger intSort(id n1, id n2, void* c) {
    int v1 = [n1 intValue];
    int v2 = [n2 intValue];
    if (v1 < v2)
        return NSOrderedAscending;
    else if (v1 > v2)
        return NSOrderedDescending;
    else {
        return NSOrderedSame;//code never excutes
    }
}

@implementation ResultViewController


-(void) viewDidLoad {
    self.blue.text = self.blueBall;
    [self.redBalls sortUsingFunction:intSort context:nil];
    NSMutableString* red = [NSMutableString stringWithString:@""];
    
    for (NSNumber* b in self.redBalls) {
        [red appendFormat:@" %@", b.stringValue];
    }
    self.red.text = red;
}
@end
