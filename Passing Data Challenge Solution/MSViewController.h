//
//  MSViewController.h
//  Passing Data Challenge Solution
//
//  Created by Mat Sletten on 4/29/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSDetailViewController.h"

@interface MSViewController : UIViewController <MSDetailViewControllerDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *emptyTextField;


@end
