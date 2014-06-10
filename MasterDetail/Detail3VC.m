//
//  Detail3VC.m
//  MasterDetail
//
//  Created by CtecTeacher on 6/3/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "Detail3VC.h"

@interface Detail3VC ()
@end

@implementation Detail3VC
@synthesize tf_input;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)startTimer:(id)sender {
    
    [self timer:[tf_input.text intValue]];
}
- (void)timer:(int)withTime {
    
    mainTimer = [NSTimer scheduledTimerWithTimeInterval:withTime target:self selector:@selector(timerComplete) userInfo:nil repeats:NO];
    
    NSDate *currentDate = [NSDate date];
    NSDate *fireTime = [currentDate dateByAddingTimeInterval:withTime];
    
    UILocalNotification *timerNotification = [[UILocalNotification alloc]init];
    timerNotification.fireDate = fireTime;
    timerNotification.alertBody = @"Your Timer is Complete";
    timerNotification.alertAction = @"Show me the item";
    timerNotification.timeZone = [NSTimeZone defaultTimeZone];
    timerNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication]applicationIconBadgeNumber] + 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:timerNotification];
    
}
- (void)timerComplete {
    
    [mainTimer invalidate];
    
    /*UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Timer" message:@"Your Timer is Complete" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    [alert show];*/
}










@end
