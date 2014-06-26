//
//  NewsViewcontroller.m
//  Projectapp
//
//  Created by Enuke New Mac on 21/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "NewsViewcontroller.h"
#import "Newsdescription.h"
@interface NewsViewcontroller ()

@end

@implementation NewsViewcontroller
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
    self.label.text=@"News";

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
////    CGRect frame = CGRectMake(0, -200, 400, 44);
////    UILabel *label1 = [[UILabel alloc] initWithFrame:frame];
////    label1.backgroundColor = [UIColor clearColor];
////    label1.textColor=[UIColor whiteColor];
////    label1.font = [UIFont boldSystemFontOfSize:17.0];
////    label1.textAlignment = UITextAlignmentLeft;
////    self.navigationItem.titleView.frame = CGRectMake(100, -100, 180, 44); //(this doesn't work either)
////
////    label1.text = @"News";
////    //    UIView * testView = [[UIView alloc] init];
////    ////    [testView setBackgroundColor:[UIColor blackColor]];
////    //    testView.frame = CGRectMake(0,0, 400, 44);
////    //    [testView addSubview:label1];
////    //    [self.navigationController.navigationItem.titleView addSubview:label1];
////    self.navigationItem.titleView = label1;
//    
//    UIButton *titleLabel = [UIButton buttonWithType:UIButtonTypeCustom];
//    [label setTitle:@"News" forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentRight;
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(-60,-15, 140, 20);
//    
//    
//    
//    //    if (self.circleName.length<7)
//    //        titleLabel1.frame = CGRectMake(100,5, 15, 15);
//    //    else if (self.circleName.length<12)
//    //        titleLabel1.frame = CGRectMake(140,5, 15, 15);
//    //    else
//    //        titleLabel1.frame = CGRectMake(150,5, 15, 15);
//    
//    UIView * newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
//    [newView addSubview:titleLabel];
//    self.navigationItem.titleView = newView;
//
//    self.navigationController.navigationBar.hidden=NO;

//    self.navigationController.navigationBar.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"header_bg.png"]];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated{
    [tblview setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]]];
    //    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    UIImage *backBtnImage = [UIImage imageNamed:@"back_btn.png"]  ;
    //    [backBtn setBackgroundImage:backBtnImage forState:UIControlStateNormal];
    //    [backBtn addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
    //    backBtn.frame = CGRectMake(0, 0, 80, 40);
    //     UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:backBtn] ;
    //    self.navigationItem.leftBarButtonItem = backButton;
    
//    [[[self.navigationController.viewControllers objectAtIndex:self.navigationController.viewControllers.count -1] view] setHidden:YES];
//    
//    [[[self.navigationController.viewControllers objectAtIndex:self.navigationController.viewControllers.count -1] view] setFrame:CGRectMake(0, 0, 320, 400)];

}
-(IBAction)goback:(id)sender
{
        [self.navigationController popViewControllerAnimated:NO];
 
}
#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString *stringForCell;
//    if (indexPath.section == 0) {
//        stringForCell= [myData objectAtIndex:indexPath.row];
//        
//    }
//    else if (indexPath.section == 1){
//        stringForCell= [myData objectAtIndex:indexPath.row+ [myData count]/2];
//        
//    }
    [cell.textLabel setText:stringForCell];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"txt_bg.png"] drawInRect:CGRectMake(0, 0, 295, 80)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    cell.backgroundColor=[UIColor colorWithPatternImage:image];
    cell.textLabel.textColor=[UIColor whiteColor];
    UIImage *image1 = [UIImage imageNamed:@"grey_box.png"];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
    imageView.frame = CGRectMake(0,0, 80,80);
    [cell.contentView addSubview:imageView];

    UIFont * customFont = [UIFont fontWithName:@"Arial" size:15]; //custom font
    NSString * text = @"Hands on Workshop CME for doctors";
    
    CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(200, 50) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(91, 9, labelSize.width, labelSize.height)];
    fromLabel.text = text;
    fromLabel.font = customFont;
    fromLabel.numberOfLines = 2;
    fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel.adjustsFontSizeToFitWidth = YES;
    fromLabel.adjustsLetterSpacingToFitWidth = YES;
    fromLabel.minimumScaleFactor = 10.0f/12.0f;
    fromLabel.clipsToBounds = YES;
    fromLabel.backgroundColor = [UIColor clearColor];
    fromLabel.textColor = [UIColor blackColor];
    fromLabel.textAlignment = NSTextAlignmentLeft;
    [cell.contentView addSubview:fromLabel];
    
    UIFont * customFont1 = [UIFont fontWithName:@"Arial" size:15]; //custom font
    NSString * text1 = @"5 April 2012";
    
    CGSize labelSize1 = [text1 sizeWithFont:customFont constrainedToSize:CGSizeMake(50, 100) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 20, labelSize1.width, labelSize1.height)];
    fromLabel1.text = text1;
    fromLabel1.font = customFont1;
    fromLabel1.numberOfLines = 2;
    fromLabel1.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel1.adjustsFontSizeToFitWidth = YES;
    fromLabel1.adjustsLetterSpacingToFitWidth = YES;
    fromLabel1.minimumScaleFactor = 10.0f/12.0f;
    fromLabel1.clipsToBounds = YES;
    fromLabel1.backgroundColor = [UIColor clearColor];
    fromLabel1.textColor = [UIColor whiteColor];
    fromLabel1.textAlignment = NSTextAlignmentCenter;
    [cell.contentView addSubview:fromLabel1];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(aMethod:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Read more" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithRed:0.0/255.0 green:175.0/255.0 blue:239.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    button.frame = CGRectMake(170, 40, 160.0, 40.0);
    [cell.contentView addSubview:button];
    [cell.contentView bringSubviewToFront:button];
    return cell;
}

// Default is 1 if not implemented
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:
//(NSInteger)section{
//    NSString *headerTitle;
//    if (section==0) {
//        headerTitle = @"Section 1 Header";
//    }
//    else{
//        headerTitle = @"Section 2 Header";
//
//    }
//    return headerTitle;
//}
//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:
//(NSInteger)section{
//    NSString *footerTitle;
//    if (section==0) {
//        footerTitle = @"Section 1 Footer";
//    }
//    else{
//        footerTitle = @"Section 2 Footer";
//
//    }
//    return footerTitle;
//}

#pragma mark - TableView delegate
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%d Row:%d selected and its data is %@",
          indexPath.section,indexPath.row,cell.textLabel.text);
//    NSString *strdata=[myData objectAtIndex:indexPath.row];
//    if ([strdata isEqualToString:@"News"]) {
//        NewsViewcontroller *root=[[NewsViewcontroller alloc]initWithNibName:@"NewsViewcontroller" bundle:nil];
//        self.navigationController.navigationBar.hidden=NO;
//        [self.navigationController pushViewController:root animated:YES];
//    }
}
- (void)aMethod:(id)sender
{
    Newsdescription *root=[[Newsdescription alloc]initWithNibName:@"Newsdescription" bundle:nil];
    [self.navigationController pushViewController:root animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
