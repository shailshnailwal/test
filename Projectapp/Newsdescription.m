//
//  Newsdescription.m
//  Projectapp
//
//  Created by Enuke New Mac on 21/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Newsdescription.h"
#import "NewsViewcontroller.h"
@interface Newsdescription ()

@end

@implementation Newsdescription
@synthesize label;

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
    label.text=@"News";

//    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    UIImage *backBtnImage = [UIImage imageNamed:@"back_btn.png"];
//    UIImage *backBtnImagePressed = [UIImage imageNamed:@"back_btn.png"];
//    [backBtn setBackgroundImage:backBtnImage forState:UIControlStateNormal];
//    [backBtn setBackgroundImage:backBtnImagePressed forState:UIControlStateHighlighted];
//    [backBtn addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
//    backBtn.frame = CGRectMake(-8, -20, 80, 33);
//    UIView *backButtonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 80, 33)];
//    backButtonView.bounds = CGRectOffset(backButtonView.bounds, -14, -7);
//    [backButtonView addSubview:backBtn];
//    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:backButtonView];
//    self.navigationItem.leftBarButtonItem = backButton;
//    [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, 320, 74)];
//
//    
//    
//    UIButton *titleLabel = [UIButton buttonWithType:UIButtonTypeCustom];
//    [titleLabel setTitle:@"News" forState:UIControlStateNormal];
//titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//        titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentRight;
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(-60,-15, 140, 20);
//
//    
//
//    
//    UIView * newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
//    [newView addSubview:titleLabel];
//    self.navigationItem.titleView = newView;
//
//    self.navigationController.navigationBar.hidden=NO;

    // Do any additional setup after loading the view from its nib.
}
-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
//    NewsViewcontroller *root=[[NewsViewcontroller alloc]initWithNibName:@"NewsViewcontroller" bundle:nil];
//    [self.navigationController pushViewController:root animated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
   

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
