//
//  Die.m
//  DieHard
//
//  Created by Eduardo Alvarado Díaz on 10/8/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "Die.h"

@implementation Die

- (void)roll {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"This happens second");
        int randomNumber = arc4random_uniform(6)+1;
        if (randomNumber > 4) {
            [self.delegate dieFellOffTable];
            NSLog(@"Hi I'm the die and I fell off the table and I'm about to tell the ViewController that I fell off the table.");
        }else{
            NSLog(@"Hi I'm the Die and I'm about to tell my delegate that the roll is: %d",randomNumber);

            [self.delegate dieRollWithTheValue:randomNumber];
        }
    });
    NSLog(@"This happens first");
}

@end
