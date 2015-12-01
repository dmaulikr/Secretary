//
//  ViewController.h
//  Secretary
//
//  Created by Alexander on 01/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIGestureRecognizerDelegate>

@property(nonatomic , weak) IBOutlet UITextField *textField;

-(IBAction)goButtonPress:(id)sender;

@end

