//
//  ViewController.m
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/23/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import "ViewController.h"
#import "HomeTableViewCell.h"
#import "ProductListViewController.h"
@interface ViewController ()

@end
NSArray *CatArray;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CatArray=[NSArray arrayWithObjects:@"cat1",@"Untitled2.png", @"Untitled.png",nil];
    
     // Set to title and Color  of Navigation Bar
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    [self.navigationController.navigationBar.topItem setTitle:@"Category"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - TableView Delegate And Data Source

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identifier=@"cell";
    
    HomeTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    
  
        if (cell == nil) {
            cell = [[HomeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
    
        cell.imageview.image=[UIImage  imageNamed:CatArray[indexPath.row]];
    
        

    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    // Push view Controller on porduct list view when user select any cell of tableview
    ProductListViewController   *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductListViewController"];
    
    [self.navigationController pushViewController:vc animated:NO];
}
@end
