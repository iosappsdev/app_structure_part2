//
//  CustomTableViewCell.h
//  MasterDetail
//
//  Created by CtecTeacher on 6/3/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title_label;
@property (weak, nonatomic) IBOutlet UILabel *subTitle_label;
@property (weak, nonatomic) IBOutlet UILabel *detail_label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
