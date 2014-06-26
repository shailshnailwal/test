//
//  Yourappointment.m
//  Projectapp
//
//  Created by Enuke New Mac on 29/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Yourappointment.h"
#import <GoogleMaps/GoogleMaps.h>
@interface Yourappointment ()

@end

@implementation Yourappointment
@synthesize label,scrolldown;

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
    label.text=@"Your Appointment";
   
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
longitude:151.20
                                                                 zoom:6];
 GMSMapView *mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;
//    UIScrollView *scroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 300)];
//    scroll.userInteractionEnabled=YES;
//    scroll.backgroundColor=[UIColor orangeColor];
//    
//    [self.view addSubview:scroll];
//    
//    UIImageView *imgv=[[UIImageView alloc]initWithFrame:CGRectMake(0,0,320,450)];
//    
//    imgv.image=[UIImage imageNamed:@"01.jpg"];
//    
//    [scroll addSubview:imgv];
//    imgv.userInteractionEnabled=YES;
//    
//    scroll.contentSize=CGSizeMake(320,500);
//    scrolldown.contentSize=CGSizeMake(320,500);
//
//    

    
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animate
{
      self.scrolldown.backgroundColor=[UIColor orangeColor];
    self.scrolldown.contentSize=CGSizeMake(320,500);

}
-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
