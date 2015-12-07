//
//  MenuBarViewController.m
//  Secretary
//
//  Created by Alexander on 03/12/15.
//  Copyright © 2015 Alexander Vorontsov. All rights reserved.
//

#import "MenuBarViewController.h"
#import "MainViewController.h"

@interface MenuBarViewController ()



@end

@implementation MenuBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
#pragma mark perform segue
//Performing segue

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
