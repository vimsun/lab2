//
//  ViewController.h
//  lab2
//
//  Created by Student on 01.10.18.
//  Copyright © 2018 Student. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextFieldCell *calculatorDisplay;

- (IBAction)numberPressed:(NSButton *)sender;

- (IBAction)calculationPressed:(id)sender;

- (IBAction)equalsPressed:(NSButton *)sender;

@property (nonatomic) BOOL typingNumber;
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNmber;
@property (nonatomic, copy) NSString *operation;

@end
