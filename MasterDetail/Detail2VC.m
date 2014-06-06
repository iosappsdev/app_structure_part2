//
//  Detail2VC.m
//  MasterDetail
//
//  Created by CtecTeacher on 6/3/14.
//  Copyright (c) 2014 iOS Apps Development. All rights reserved.
//

#import "Detail2VC.h"

#define WORK_LAT 34.036629f;
#define WORK_LON -118.230239;
#define WORK_SPAN 0.03f;

@interface Detail2VC ()<UIActionSheetDelegate> {
    CLLocationCoordinate2D center;
}
@end

@implementation Detail2VC
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Create Region
    MKCoordinateRegion region;
    
    // Load Coors
    center.latitude = WORK_LAT;
    center.longitude = WORK_LON;
    
    // Map Span
    MKCoordinateSpan span;
    span.latitudeDelta = WORK_SPAN;
    span.longitudeDelta = WORK_SPAN;
    
    // Set Region & Span
    region.center = center;
    region.span = span;
    
    [mapView setRegion:region animated:YES];
    
    // Annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = center;
    point.title = @"VIP Marketing";
    point.subtitle = @"640 Santa Fe Ave Los Angeles, CA 90021";
    
    [mapView addAnnotation:point];
    [mapView selectAnnotation:point animated:YES];
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    
    UIButton *mapButton = [[UIButton alloc]init];
    mapButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [mapButton setTitle:@"" forState:UIControlStateNormal];
    
    MKPinAnnotationView *pinView = [[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    pinView.pinColor = MKPinAnnotationColorRed;
    pinView.enabled = YES;
    pinView.canShowCallout = YES;
    pinView.rightCalloutAccessoryView = mapButton;
    pinView.selected = YES;
    
    return pinView;
   
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    
    UIActionSheet *options = [[UIActionSheet alloc]initWithTitle:@"Options" delegate:self cancelButtonTitle:@"Cancel"  destructiveButtonTitle:nil otherButtonTitles:@"Get Directions",@"Call Office", nil];
    
    
    [options showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (buttonIndex) {
        case 0: {
            NSLog(@"Selected 0");
            
            MKPlacemark *place = [[MKPlacemark alloc]initWithCoordinate:center addressDictionary:nil];
            
            MKMapItem *destination = [[MKMapItem alloc]initWithPlacemark:place];
            destination.name = @"VIP Marketing";
            destination.url = [NSURL URLWithString:@"www.google.com"];
            
            NSArray *locations = @[destination];
            
            NSDictionary *mapOptions = [[NSDictionary alloc]initWithObjectsAndKeys:MKLaunchOptionsDirectionsModeDriving,MKLaunchOptionsDirectionsModeKey, nil];
            
            [MKMapItem openMapsWithItems:locations launchOptions:mapOptions];
  
        }
            break;
        case 1: {
            NSLog(@"Selected 1");
        }
            break;
            
        default:
            break;
    }
    
}

@end
