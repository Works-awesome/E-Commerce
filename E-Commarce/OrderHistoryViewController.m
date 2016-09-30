//
//  OrderHistoryViewController.m
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/30/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import "OrderHistoryViewController.h"
#import "OrderHistoryTableViewCell.h"
@interface OrderHistoryViewController ()

@end

@implementation OrderHistoryViewController

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
    
    static NSString *identifier=@"ordercell";
    
    OrderHistoryTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
    
    if (cell == nil) {
        cell = [[OrderHistoryTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.Productimage.image=[UIImage  imageNamed:@"po1.png"];
    
    cell.productName.text=@"Nike NightMare";
    cell.Price.text=@"7";
    cell.Size.text=@"21.12.2016";
    cell.Amount.text=@"145$";
    return cell;
}


@end
