//
//  MSViewController.m
//  Passing Data Challenge Solution
//
//  Created by Mat Sletten on 4/29/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSViewController.h"
#import "MSDetailViewController.h"

@interface MSViewController ()

@end

@implementation MSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //Combined with the BOOL below, this makes the keyboard go away when return key is pressed
    self.emptyTextField.delegate = self;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]){
        if ([segue.destinationViewController isKindOfClass:[MSDetailViewController class]]){
            MSDetailViewController *detailView = segue.destinationViewController;
            detailView.informationFromEmptyTextField = self.emptyTextField.text;
            detailView.updateTextDelegate = self;
        }
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark MSDetailViewConroller Delegate
-(void)didUpdateText:(NSString *)detailText;
{
    self.emptyTextField.text = detailText;
}

#pragma mark UITextFieldDelegate
//to set the keyboard to go away when clicking on Return use the UITextFieldDelegate protocol with a bool
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.emptyTextField resignFirstResponder];
    return YES;
}
@end
