//
//  MSDetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Mat Sletten on 4/29/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSDetailViewController.h"

@interface MSDetailViewController ()

@end

@implementation MSDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.label.text = self.informationFromEmptyTextField;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateButtonPressed:(UIButton *)sender
{
    self.label.text = self.detailTextField.text;
    [self.updateTextDelegate didUpdateText:self.detailTextField.text];
}
@end
