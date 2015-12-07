//
//  SlideMenuDelegate.h
//  Secretary
//
//  Created by Alexander on 04/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SlideMenuDelegate <NSObject>

@optional

//Right menu is going to close
-(void)rightMenuWillClose;

//Right menu is already closed
-(void)rightMenuDidClose;

//Right menu is going to open
-(void)rightMenuWillOpen;

//Right menu is already opened
-(void)rightMenuDidOpen;

@end
