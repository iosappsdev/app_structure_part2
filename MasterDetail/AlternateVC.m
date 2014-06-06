//
//  AlternateVC.m
//  MasterDetail
//
//  Created by CtecTeacher on 6/3/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "AlternateVC.h"
#import "AltDetail.h"

@interface AlternateVC ()

- (IBAction)dismiss:(id)sender;
- (IBAction)altDetail:(id)sender;
@end

@implementation AlternateVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)altDetail:(id)sender {
    AltDetail *altd = [self.storyboard instantiateViewControllerWithIdentifier:@"AltDetail"];
    
    [self.navigationController pushViewController:altd animated:YES];
}














@end
