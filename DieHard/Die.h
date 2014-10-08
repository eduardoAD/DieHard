//
//  Die.h
//  DieHard
//
//  Created by Eduardo Alvarado Díaz on 10/8/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DieDelegate

- (void)dieRollWithTheValue:(int)value;
- (void)dieFellOffTable;

@end
@interface Die : NSObject

- (void) roll;

@property id<DieDelegate> delegate;

@end
