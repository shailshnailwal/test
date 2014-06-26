//
//  Workinghour.m
//  Projectapp
//
//  Created by Enuke New Mac on 05/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Workinghour.h"

@interface Workinghour ()

@end

@implementation Workinghour
@synthesize arr,lbl,lbl1,indexselect,toplbl,lbl2;
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
    NSArray *arr1=[NSArray arrayWithObjects:@"Asian Reproductive Medicine Centre Kozhikode", @"Ayyanthole Ground",@"Fort Rd, Padanapalam",@"Asian Reproductive Medicine Centre",@"Linea Cosmetic Surgery Center",@"Rashidiya Polyclinic, Bur Dubai",@"Premium Care Polyclinic",nil];
    NSMutableArray *arrlocation=[[NSMutableArray alloc]initWithObjects:@"CALICUT",@"THRISSUR",@"KANNUR",@"PALAKKAD",@"MANGALORE",@"DUBAI",@"DOHA", nil];
    arr=[NSArray arrayWithObjects:@"Monday to Saturday – 09.00am to 07.00pm",@"Monday to Saturday 9.00am to 5.00pm",@"Monday to Saturday – 9.00am to 7.00pm ",@"Monday to saturday 9.00am to 5.00pm",@"Monday to saturday 9.00am to 5.00pm",@"Monday to saturday 9.00am to 5.00pm",@"Monday to saturday 9.00am to 5.00pm",nil];
    NSArray *arr2=[NSArray arrayWithObjects:@"Sunday: 9.00am to 1.00pm",@"Sunday: 9.00am to 1.00pm",@"Sunday 9.00am to 1.00pm",@"Sunday Holiday",@"Sunday Holiday",@"Sunday Holiday",@"Sunday Holiday",nil];

    lbl.text=[arr1 objectAtIndex:indexselect];
    lbl1.text=[arr objectAtIndex:indexselect];
    lbl2.text=[arr2 objectAtIndex:indexselect];

    toplbl.text=[NSString stringWithFormat:@"%@-Working Hrs",[arrlocation objectAtIndex:indexselect]];

    // Do any additional setup after loading the view from its nib.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
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
