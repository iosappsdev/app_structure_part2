//
//  ViewController.m
//  MasterDetail
//
//  Created by CtecTeacher on 6/3/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
#import "Detail1VC.h"
#import "Detail2VC.h"
#import "Detail3VC.h"
#import "AlternateVC.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>{

    NSArray *menuItems;
}
- (IBAction)altVC:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    menuItems = @[@"MessageUI Framework",@"MapKit",@"UILocal Notifications"];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return menuItems.count;

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.title_label.text = [menuItems objectAtIndex:indexPath.row];
    cell.subTitle_label.text = @"Test String";
    
    cell.detail_label.text = @"Detail Test String";
    
    cell.imageView.image = [UIImage imageNamed:nil];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0: {
            NSLog(@"You Selected Case 0");
            
            Detail1VC *d1 = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail1VC"];
            [self.navigationController pushViewController:d1 animated:YES];
        }
            break;
        case 1: {
            NSLog(@"You Selected Case 1");
            
            Detail2VC *d2 = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail2VC"];
            [self.navigationController pushViewController:d2 animated:YES];
        }

            break;
        case 2:{
            NSLog(@"You Selected Case 2");
            
            Detail1VC *d3 = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail3VC"];
            [self.navigationController pushViewController:d3 animated:YES];
        }

            break;
            
        default:
            break;
    } 
    
}
- (IBAction)altVC:(id)sender {
    AlternateVC *Alt = [self.storyboard instantiateViewControllerWithIdentifier:@"AlternateVC"];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:Alt];
    
    [self presentViewController:nav animated:YES completion:^{
        NSLog(@"AltVC Displayed");
    }];
}
@end
