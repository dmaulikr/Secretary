//
//  LeftSkideMenuSegue.m
//  Secretary
//
//  Created by Alexander on 06/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import "LeftSkideMenuSegue.h"

#import "SlideMenuSegue.h"
#import "MainViewController.h"
#import "MenuBarViewController.h"

@implementation LeftSkideMenuSegue

-(void) perform {
    MainViewController *mainVc = self.sourceViewController;
    MenuBarViewController *leftMenu = self.destinationViewController;
    
    mainVc.leftMenu = leftMenu;
    leftMenu.mainVC = mainVc;
    
    [mainVc addChildViewController:leftMenu];
    
    double delayInSeconds = 0.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds*NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        CGRect bounds = mainVc.view.bounds;
        leftMenu.view.frame = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    });
    
    [mainVc.view addSubview:leftMenu.view];
    
    [leftMenu.navigationController setNavigationBarHidden:YES];
    
    //translate indexPath
}

@end
