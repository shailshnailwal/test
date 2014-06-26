//
//  TermsView.m
//  Projectapp
//
//  Created by Enuke New Mac on 21/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "TermsView.h"
#import "Rootviewcontroller.h"
@interface TermsView ()

@end

@implementation TermsView

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
    
    agrbtn.layer.cornerRadius = 20; // this value vary as per your desire
    agrbtn.clipsToBounds = YES;    // Do any additional setup after loading the view from its nib.
}
-(IBAction)agree:(id)sender
{
    
    Rootviewcontroller *root=[[Rootviewcontroller alloc]initWithNibName:@"Rootviewcontroller" bundle:nil];
    [self.navigationController pushViewController:root animated:YES];
//    [self presentViewController:root animated:YES completion:nil];
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
