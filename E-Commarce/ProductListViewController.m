//
//  ProductListViewController.m
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/30/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import "ProductListViewController.h"
#import "ProductCollectionViewCell.h"
#import "DetailViewController.h"
@interface ProductListViewController ()

@end

@implementation ProductListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Set to title and Color  of Navigation Bar
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    [self.navigationController.navigationBar.topItem setTitle:@"Shoes Store"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return 2;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{


    ProductCollectionViewCell *myCell = [collectionView
                                        dequeueReusableCellWithReuseIdentifier:@"ProCell"
                                        forIndexPath:indexPath];
    
    
    myCell.productImage.image=[UIImage imageNamed:@"po1.png"];
    myCell.productName.text=@"NIKE NightWare 1D";
    myCell.price.text=@"145$";
    return myCell;

}
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(1, 5, 1, 1);
}


- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 1.0;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(155, 185);
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    DetailViewController   *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    [self.navigationController pushViewController:vc animated:NO];


}
@end
