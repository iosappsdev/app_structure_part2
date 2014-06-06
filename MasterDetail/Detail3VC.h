//
//  Detail3VC.h
//  MasterDetail
//
//  Created by CtecTeacher on 6/3/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Detail3VC : UIViewController {
    NSTimer *mainTimer;
    int timerInput;
}
@property (weak, nonatomic) IBOutlet UITextField *tf_input;

- (IBAction)startTimer:(id)sender;

- (void)timer:(int)withTime;
- (void)timerComplete;

@end
