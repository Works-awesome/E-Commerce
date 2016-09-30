//
//  DetailViewController.m
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/30/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import "DetailViewController.h"
#import "HHAlertView.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    [self.navigationController.navigationBar.topItem setTitle:@"Details"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addToCart:(id)sender {
    
    
    HHAlertView *alertview = [[HHAlertView alloc] initWithTitle:@"Success" detailText:@"Add To Cart successfully" cancelButtonTitle:nil otherButtonTitles:@[@"OK"]];
    [alertview setEnterMode:HHAlertEnterModeLeft];
    [alertview setLeaveMode:HHAlertLeaveModeRight];
    
    [alertview showWithBlock:^(NSInteger index) {
        NSLog(@"%ld",(long)index);
    }];
    [alertview show];
}


@end
