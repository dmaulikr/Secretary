//
//  MainViewController.h
//  Secretary
//
//  Created by Alexander on 01/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConstantsHeader.h"
#import "SlideMenuDelegate.h"
#import "MenuBarViewController.h"

typedef enum {
    SlideMenuClosed,
    SlideMenuOpened
} SlideMenuState;



@interface MainViewController : UIViewController

@property(nonatomic , weak) id<SlideMenuDelegate> slideMenuDelegate;
@property (strong, nonatomic) MenuBarViewController *leftMenu;
@property (strong, nonatomic) UINavigationController *currentActiveNVC;

@property (strong, nonatomic) UITapGestureRecognizer *tapGesture;
@property (strong, nonatomic) UIPanGestureRecognizer *panGesture;

@property (nonatomic) BOOL leftPanDisabled;
@property (nonatomic) BOOL rightPanDisabled;

@property (nonatomic) BOOL isInitialStart;




@end
