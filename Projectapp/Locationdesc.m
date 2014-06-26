//
//  Locationdesc.m
//  Projectapp
//
//  Created by Enuke New Mac on 04/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Locationdesc.h"
#import "Workinghour.h"
#define isiPhone5  ([[UIScreen mainScreen] bounds].size.height == 568)?TRUE:FALSE
#define isiPhone  (UI_USER_INTERFACE_IDIOM() == 0)?TRUE:FALSE
@interface Locationdesc ()

@end

@implementation Locationdesc
@synthesize lbl,myDatalocation,locationnamelbl,index,descLocationimgview,locationnamelbltop,mapView_,btnclose,locarr,workbtn,mapbtn;
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
    if(isiPhone)
    {
        if (isiPhone5)
        {
            
        }
        else
        {
            [workbtn setFrame:CGRectMake(20, 400, 280, 39)];
        }
    }
    else
    {
        //[ipad]
    }
    NSArray * arrdesc=[NSArray arrayWithObjects:[NSString stringWithFormat:@"Asian Reproductive Medicine Centre\nBMT Centre\nPuthiyara ,Calicut,\nKerala ,India\nTel +91 495 2724101,102,3103555\nHelp Line: 9995271664\nEmail : info@armcivf.net \nWebsite : www.armcivf.net"],[NSString stringWithFormat:@"Asian Reproductive Medicine Centre\nFalkaland Tower,\nAyyanthole Ground,\nThrissur\nKerala ,India\nTel 0487 3105100\nHelp Line: 9846255155\nEmail : info@armcivf.net\nWebsite : www.armcivf.net"],[NSString stringWithFormat:@"ARMC IVF\n2nd Grand Plaza building\nPrabhath junction \nFort road , Kannur\nHelpline : 9526 14 14 00 \nPh: 0497-2766018/019 \nEmail : info@armcivf.net \nWebsite : www.armcivf.net"],[NSString stringWithFormat:@"ARMC IVF\n3rd Floor Surya corner \nEnglish church road \nPalakkad \n678014 \nPh:04912523405/06 \nEmail : info@armcivf.net \nWebsite : www.armcivf.net"],[NSString stringWithFormat:@"ARMC IVF \nKavery Building \nNear Unity Hospital \nFalnir \nMangalore \nKarnataka – India \nTel: 0824 2430350/51 \nHelp line: +91 9880 910 181 \nEmail : info@armcivf.net \nWebsite : www.armcivf.net"],[NSString stringWithFormat:@"Dubai \nRashidiya Pvt Polyclinic \nBurdubai, \nDubai,UAE \nTel: +971 43939383 \nEmail: rashidiyapolyclinic@hotmail.com \nWebsite:www.rpcuae.com"],[NSString stringWithFormat:@"Premium Care Polyclinic \nP O Box – 5420 \nDoha – Qatar \nTel +974 4433 9000 \nEmail: care@pcpqatar.com \nWebsite:www.pcpqatar.com"],nil];
    
   
    NSArray * arrdescimg=[NSArray arrayWithObjects:@"7-calicut.png",@"1-thrissur.png",@"4-kannur.png",@"2-palakkad.png",@"3-Mangalore.png",@"5-dubai.png",@"6-doha.png", nil];
    myDatalocation = [[NSMutableArray alloc]initWithObjects:
              @"CALICUT",@"THRISSUR",@"KANNUR",@"PALAKKAD",@"MANGALORE",@"DUBAI",@"DOHA", nil];
    NSDictionary *dict=[NSDictionary dictionaryWithObjectsAndKeys:@"11.256789",@"lat",@"75.792499",@"log",@"14",@"zoom",@"Asian Reproductive Medicine Centre Kozhikode",@"place", nil];
    NSDictionary *dict1=[NSDictionary dictionaryWithObjectsAndKeys:@"10.528045",@"lat",@"76.186237",@"log",@"13",@"zoom", @"Ayyanthole Ground",@"place",nil];
      NSDictionary *dict2=[NSDictionary dictionaryWithObjectsAndKeys:@"11.868569",@"lat",@"75.366711",@"log",@"13",@"zoom",@"Fort Rd, Padanapalam Kannur, Kerala India",@"place", nil];
    NSDictionary *dict3=[NSDictionary dictionaryWithObjectsAndKeys:@"10.766495",@"lat",@"76.653692",@"log",@"16",@"zoom",@"Asian Reproductive Medicine Centre Palakkad",@"place", nil];
    NSDictionary *dict4=[NSDictionary dictionaryWithObjectsAndKeys:@"12.891069",@"lat",@"74.854252",@"log",@"13",@"zoom",@"Linea Cosmetic Surgery Center",@"place", nil];
    NSDictionary *dict5=[NSDictionary dictionaryWithObjectsAndKeys:@"25.283196",@"lat",@"55.378304",@"log",@"12",@"zoom",@"Rashidiya Polyclinic, Bur Dubai, Dubai,UAE",@"place", nil];
    NSDictionary *dict6=[NSDictionary dictionaryWithObjectsAndKeys:@"25.263154",@"lat",@"51.508193",@"log",@"13",@"zoom",@"Premium Care Polyclinic",@"place", nil];
    locarr=[[NSMutableArray alloc]init];
    [locarr addObject:dict];
    [locarr addObject:dict1];
    [locarr addObject:dict2];
    [locarr addObject:dict3];
    [locarr addObject:dict4];
    [locarr addObject:dict5];
    [locarr addObject:dict6];


    lbl.text=[arrdesc objectAtIndex:index];
    descLocationimgview.image=[UIImage imageNamed:[arrdescimg objectAtIndex:index]];
  locationnamelbl.text=[myDatalocation objectAtIndex:index];
    locationnamelbltop.text=[NSString stringWithFormat:@"Location-%@",[myDatalocation objectAtIndex:index]];
    btnclose.hidden=YES;

    // Do any additional setup after loading the view from its nib.
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
-(IBAction)openworkinghour:(id)sender
{
    Workinghour *root=[[Workinghour alloc]initWithNibName:@"Workinghour" bundle:nil];
    root.indexselect=index;
    [self.navigationController pushViewController:root animated:NO];
}

-(IBAction)mapopen:(id)sender
{
    NSDictionary *dict=(NSDictionary*)[locarr objectAtIndex:index];
    float lat=[[dict objectForKey:@"lat"] floatValue];
    float log=[[dict objectForKey:@"log"] floatValue];
    int zoom=[[dict objectForKey:@"zoom"] intValue];
    NSString *str=[dict objectForKey:@"place"];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:lat
                                                            longitude:log
                                                                 zoom:zoom];
    mapView_ = [GMSMapView mapWithFrame:CGRectMake(0, 0, 320, 568) camera:camera];
    mapView_.myLocationEnabled = YES;
    [self.view  addSubview:mapView_];
    btnclose.hidden=NO;
    [self.view  addSubview:btnclose];

    [mapView_ bringSubviewToFront:btnclose];
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(lat, log);
    marker.title =[NSString stringWithFormat:@"%@",str];
    marker.snippet =[NSString stringWithFormat:@"%@",str];
    marker.map = mapView_;

}

-(IBAction)mapclose:(id)sender
{
    btnclose.hidden=YES;

    [mapView_ removeFromSuperview];

}

-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
