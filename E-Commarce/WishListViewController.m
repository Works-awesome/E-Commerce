//
//  WishListViewController.m
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/30/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import "WishListViewController.h"
#import "WishlistTableViewCell.h"
@interface WishListViewController ()

@end

@implementation WishListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier=@"wishcell";
    
    WishlistTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
    
    if (cell == nil) {
        cell = [[WishlistTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.imageview.image=[UIImage  imageNamed:@"po1.png"];
    
    cell.name.text=@"Nike NightMare";
    cell.size.text=@"Price";
    cell.price.text=@"7";
    cell.amount.text=@"145$";
    return cell;
}

-(NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewRowAction *button = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"Checkout" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath)
                                    {
                                        NSLog(@"Action to perform with Button 1");
                                    }];
    button.backgroundColor = [UIColor greenColor]; //arbitrary color
    UITableViewRowAction *button2 = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDefault title:@"Delete" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath)
                                     {
                                         NSLog(@"Action to perform with Button2!");
                                     }];
    button2.backgroundColor = [UIColor redColor]; //arbitrary color
    
    return @[button, button2]; //array with all the buttons you want. 1,2,3, etc...
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // you need to implement this method too or nothing will work:
    
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES; //tableview must be editable or nothing will work...
}

@end
