//
//  Detail1VC.m
//  MasterDetail
//
//  Created by CtecTeacher on 6/3/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "Detail1VC.h"

@interface Detail1VC ()

@end

@implementation Detail1VC
@synthesize firstName, lastName, age;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *fName = [defaults objectForKey:@"userFirstName"];
    NSString *lName = [defaults objectForKey:@"userLastName"];
    NSString *UserAge  = [defaults objectForKey:@"userAge"];
    
    firstName.text = fName;
    lastName.text = lName;
    age.text = UserAge;
    
}

- (IBAction)saveData:(id)sender {
    
    NSString *fName = firstName.text;
    NSString *lName = lastName.text;
    NSString *ageValue = age.text;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:fName forKey:@"userFirstName"];
    [defaults setObject:lName forKey:@"userLastName"];
    [defaults setObject:ageValue forKey:@"userAge"];
    
    [defaults synchronize];
}

- (IBAction)clearData:(id)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:@"" forKey:@"userFirstName"];
    [defaults setObject:@"" forKey:@"userLastName"];
    [defaults setObject:@"" forKey:@"userAge"];
    
    firstName.text = @"";
    lastName.text = @"";
    age.text = @"";

    
    [defaults synchronize];
    
    
    
}


















@end
