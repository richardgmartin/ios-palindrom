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

@end
