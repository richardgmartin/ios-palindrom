//
//  ViewController.m
//  Palindrome
//
//  Created by Richard Martin on 2016-01-13.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)checkButton:(UIButton *)sender {
    
    NSString *palindrome = self.textField.text;
    
    NSUInteger length = [palindrome length];
    
    NSLog(@"palindrome.length == %li", length);
    
    for (int i = 0; i < length / 2; i++) {
        NSLog(@"palidrome character: %c at i: %d", [palindrome characterAtIndex:i], i);
        
        if ([palindrome characterAtIndex:i] != [palindrome characterAtIndex:length - 1 - i]) {
            self.label.text = @"Gnarly, dude. Not a palindrome.";
            return;
        }
    }
    self.label.text = @"Oh, yeah! A palindrome!";
}

- (IBAction)onButtonCreate:(UIButton *)sender {
    
    NSString *firstPart = self.textField.text;
    NSString *secondPart = [NSString new];
    
    // insert loop logic to create palindrome
    
    NSUInteger stringLength = [firstPart length];
    
    if (stringLength % 2 != 0) {
        
        for (int i = (int)stringLength - 1; i >= 0; i--) {
            
            NSString *tempFirstPart = [NSString stringWithFormat:@"%c", [firstPart characterAtIndex:i]];
            
            secondPart = [secondPart stringByAppendingString:tempFirstPart];
        }
    } else {
        
        for (int i = (int)stringLength - 2; i >= 0; i--) {
            
            NSString *tempFirstPart = [NSString stringWithFormat:@"%c", [firstPart characterAtIndex:i]];
            
            secondPart = [secondPart stringByAppendingString:tempFirstPart];
        }
    
    }
    
    self.label.text = [NSString stringWithFormat:@"%@%@", firstPart, secondPart];
    
}
@end
