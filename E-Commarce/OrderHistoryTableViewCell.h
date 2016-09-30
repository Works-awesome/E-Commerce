//
//  OrderHistoryTableViewCell.h
//  E-Commarce
//
//  Created by Arjun Hanswal on 9/30/16.
//  Copyright © 2016 Com.Commarce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderHistoryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *Productimage;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *Price;
@property (weak, nonatomic) IBOutlet UILabel *Size;
@property (weak, nonatomic) IBOutlet UILabel *Amount;

@end
