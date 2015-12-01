//
//  ViewController.m
//  Secretary
//
//  Created by Alexander on 01/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *botToken = [[NSUserDefaults standardUserDefaults] stringForKey:@"botToken"];
    if (![botToken isEqualToString:@""]){
        NSLog(botToken);
        [self performSegueWithIdentifier:@"tokenInputDone" sender:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches){
        if (!CGRectContainsPoint(self.textField.bounds, [touch locationInView:self.view])){
            [self.textField resignFirstResponder];
        }
    }
}

-(void)goButtonPress:(id)sender {
    NSString *botToken = self.textField.text;
    if (![botToken isEqualToString:@""]){
        [[NSUserDefaults standardUserDefaults] setObject:botToken forKey:@"botToken"];
        [self performSegueWithIdentifier:@"tokenInputDone" sender:self];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"No bot token" message:@"Please, enter your bot token" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    }
}



@end
