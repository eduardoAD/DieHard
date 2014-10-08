//
//  ViewController.m
//  DieHard
//
//  Created by Eduardo Alvarado Díaz on 10/8/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <DieDelegate>
@property (strong, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.die = [[Die alloc] init];
    self.die.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onRollButtonPressed:(id)sender {
    [self.die roll];
}

- (void)dieRollWithTheValue:(int)value {
    self.dieLabel.text = @(value).description;
    NSLog(@"Hi I'm the ViewController and the Die told me its Roll is: %d",value);
}

- (void)dieFellOffTable {
    self.dieLabel.text = @"😃";
    NSLog(@"Hi I'm the ViewController and the die fell off the table");
}

@end
