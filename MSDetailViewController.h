//
//  MSDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Mat Sletten on 4/29/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MSDetailViewControllerDelegate <NSObject>

@required
-(void)didUpdateText:(NSString *)detailText;

@end

@interface MSDetailViewController : UIViewController

@property (weak, nonatomic) id <MSDetailViewControllerDelegate> updateTextDelegate;

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) NSString *informationFromEmptyTextField;
@property (strong, nonatomic) IBOutlet UITextField *detailTextField;

- (IBAction)updateButtonPressed:(UIButton *)sender;

@end
