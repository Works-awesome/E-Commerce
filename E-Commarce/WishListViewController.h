//
//  WishListViewController.h
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/30/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WishListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end
