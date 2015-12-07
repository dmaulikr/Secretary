//
//  SlideMenuSegue.m
//  Secretary
//
//  Created by Alexander on 05/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import "SlideMenuSegue.h"

@implementation SlideMenuSegue

-(void)perform {
    UIViewController *sourceVC = [self sourceViewController];
    UINavigationController *destinationNVC =
    [self destinationViewController];
    
    MainViewController *mainVc = (MainViewController *)sourceVC.parentViewController;
    UINavigationItem *navItem = mainVc.currentActiveNVC.navigationBar.topItem;
    
    if (!navItem) {
        navItem = destinationNVC.navigationBar.topItem;
    }
    
    if (!mainVc.isInitialStart) {
        CGRect openedFrame = mainVc.currentActiveNVC.view.frame;
        [mainVc.currentActiveNVC.view removeFromSuperview];
        mainVc.currentActiveNVC.viewControllers = nil;
        mainVc.currentActiveNVC = nil;
        
        mainVc.currentActiveNVC = destinationNVC;
        mainVc.currentActiveNVC.view.frame = openedFrame;
        navItem = destinationNVC.navigationBar.topItem;
    }
    
    if (mainVc.leftMenu) {
        UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //cfg button
        [leftBtn addTarget:mainVc action:@selector(openLeftMenu) forControlEvents:UIControlEventTouchUpInside];
        navItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    }
    
    double delayInSeconds = 0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds*NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        //mainvc configureslideLayer
    });
    
    //mainVc switchCurrentActiveVC
    
}

@end
