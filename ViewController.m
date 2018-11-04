ViewController.m 
//
//  ViewController.m
//  lab2
//
//  Created by Student on 01.10.18.
//  Copyright © 2018 Student. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)numberPressed:(NSButton *)sender {
    NSString *number = sender.title;
    if (self.typingNumber)
    {
        self.calculatorDisplay.title = [self.calculatorDisplay.title stringByAppendingString:number];
    } else{
        self.calculatorDisplay.title = number;
        self.typingNumber = YES;
    }
    
}

- (IBAction)calculationPressed:(id)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calculatorDisplay.title intValue];
    self.operation = [sender title];
}



- (IBAction)equalsPressed:(NSButton *)sender {
    self.typingNumber = NO;
    self.secondNmber = [self.calculatorDisplay.title intValue];
    int result = 0;
    if ([self.operation isEqualToString:@"+"])
    {
        result = self.firstNumber + self.secondNmber;
    }
    else if ([self.operation isEqualToString:@"-"])
    {
        result = self.firstNumber - self.secondNmber;
    }
    self.calculatorDisplay.title = [NSString stringWithFormat:@"%d", result];
}

@end
