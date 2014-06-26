//
//  GalleryView.m
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "GalleryView.h"
#import "Gallerylist.h"
@interface GalleryView ()

@end

@implementation GalleryView
@synthesize arr,arr1;
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
    label.text=@"IVF Gallery-Lab";

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
//    [titleLabel setTitle:@"IVF Gallery-Lab" forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentRight;
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(-48,-15, 200, 20);
//    
//    
//    
//    
//    UIView * newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
//    [newView addSubview:titleLabel];
//    self.navigationItem.titleView = newView;
//    self.navigationController.navigationBar.hidden=NO;
    arr=[NSArray arrayWithObjects:@"Laboratory",@"Pharmacy",@"Office",@"Annual Day",@"Suits",@"OT",@"IVF",@"Ingurations",@"Camps and Seminars",@"anniversary", nil];
    arr1=[NSArray arrayWithObjects:@"lab_icon.png",@"pher_icon.png",@"office_icon.png",@"annualD_icon.png",@"suits_icon.png",@"ot_icon.png",@"IVF-lab_icon.png",@"inaugurations_icon.png",@"camp-semi_icon.png",@"anni_icon.png", nil];

    // Do any additional setup after loading the view from its nib.
}
-(IBAction)goback:(id)sender
 {
    [self.navigationController popViewControllerAnimated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [arr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
//    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    }
//    NSString *stringForCell;
//    if (indexPath.section == 0) {
//        stringForCell= [myData objectAtIndex:indexPath.row];
//        /Users/enukenewmac/Downloads/Gallery&testimonials-extract-imgs/gallery/list_bg.png
//    }
//    else if (indexPath.section == 1){
//        stringForCell= [myData objectAtIndex:indexPath.row+ [myData count]/2];
//        
//    }
//    [cell.textLabel setText:stringForCell];
     cell.contentMode = UIViewContentModeBottom;
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"bg-blue.png"] drawInRect:CGRectMake(10, 10, 300, 55)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
 
    cell.backgroundColor=[UIColor colorWithPatternImage:image];
    cell.textLabel.textColor=[UIColor whiteColor];
    UIImage *image12 = [UIImage imageNamed:@"circle_bg.png"];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image12];
    imageView2.frame = CGRectMake(24,2, 70,70);
    [cell.contentView addSubview:imageView2];
    UIImage *image1 = [UIImage imageNamed:[arr1 objectAtIndex:indexPath.row]];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
    imageView.frame = CGRectMake(40,19, 32,32);
    [cell.contentView addSubview:imageView];
   
    UIFont * customFont = [UIFont fontWithName:@"Arial" size:18]; //custom font
    NSString * text =[arr objectAtIndex:indexPath.row];
    CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(200, 50) lineBreakMode:NSLineBreakByTruncatingTail];
    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 24, labelSize.width, labelSize.height)];
    fromLabel.text = text;
    fromLabel.font = customFont;
    fromLabel.numberOfLines = 1;
    fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel.adjustsFontSizeToFitWidth = YES;
    fromLabel.adjustsLetterSpacingToFitWidth = YES;
    fromLabel.minimumScaleFactor = 10.0f/12.0f;
    fromLabel.clipsToBounds = YES;
    fromLabel.backgroundColor = [UIColor clearColor];
    fromLabel.textColor =[UIColor whiteColor];
    fromLabel.textAlignment = NSTextAlignmentLeft;
    [cell.contentView addSubview:fromLabel];
    
 

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


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%d Row:%d selected and its data is %@",
          indexPath.section,indexPath.row,cell.textLabel.text);
    
    Gallerylist *root=[[Gallerylist alloc]initWithNibName:@"Gallerylist" bundle:nil];
    root.strlabel=[arr objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:root animated:NO];

//    NSString *strdata=[myData objectAtIndex:indexPath.row];
//    if ([strdata isEqualToString:@"News"]) {
//        NewsViewcontroller *root=[[NewsViewcontroller alloc]initWithNibName:@"NewsViewcontroller" bundle:nil];
//        [self.navigationController pushViewController:root animated:NO];
//    }
//    if ([strdata isEqualToString:@"Testimonials"]) {
//        Testimonalsview *root=[[Testimonalsview alloc]initWithNibName:@"Testimonalsview" bundle:nil];
//        [self.navigationController pushViewController:root animated:NO];
//    }
//    if ([strdata isEqualToString:@"NewsLetter"]) {
//        NewsletterView *root=[[NewsletterView alloc]initWithNibName:@"NewsletterView" bundle:nil];
//        [self.navigationController pushViewController:root animated:NO];
//    }
//    if ([strdata isEqualToString:@"FeedBack"]) {
//        FeedbackView *root=[[FeedbackView alloc]initWithNibName:@"FeedbackView" bundle:nil];
//        [self.navigationController pushViewController:root animated:NO];
//    }
//    if ([strdata isEqualToString:@"Gallery"]) {
//        GalleryView *root=[[GalleryView alloc]initWithNibName:@"GalleryView" bundle:nil];
//        [self.navigationController pushViewController:root animated:NO];
//    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
