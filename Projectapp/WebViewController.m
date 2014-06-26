//
//  WebViewController.m
//  Projectapp
//
//  Created by Enuke New Mac on 11/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize wb,index1,lbl;
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
    NSArray *arr=[NSArray arrayWithObjects:@"infertility",@"iui",@"ivf",@"special_technique",nil];
    NSArray *arr1=[NSArray arrayWithObjects:@"Infertility",@"IUI",@"IVF",@"Special Technique",nil];

    lbl.text=[arr1 objectAtIndex:index1];

    NSString *path = [[NSBundle mainBundle] pathForResource:[arr objectAtIndex:index1] ofType:@"html"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [wb loadRequest:request];

    // Do any additional setup after loading the view from its nib.
}
#pragma mark - TableView delegate
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
