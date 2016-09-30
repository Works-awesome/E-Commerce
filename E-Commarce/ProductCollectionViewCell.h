//
//  ProductCollectionViewCell.h
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/30/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIButton *addtowish;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UIImageView *productImage;

@end
