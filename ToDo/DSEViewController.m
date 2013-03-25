//
//  DSEViewController.m
//  ToDo
//
//  Created by Bob Martens on 3/25/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import "DSEViewController.h"

@interface DSEViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UITextView *todoListView;

@end

@implementation DSEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.inputField becomeFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    self.todoListView.text = [NSString stringWithFormat:@"%@\n%@",
                              self.inputField.text,
                              self.todoListView.text];
    self.inputField.text = @"";
    [self.inputField resignFirstResponder];
    return YES;
}

- (IBAction)viewTapped:(id)sender {
    [self.inputField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
