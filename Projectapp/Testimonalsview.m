//
//  Testimonalsview.m
//  Projectapp
//
//  Created by Enuke New Mac on 22/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Testimonalsview.h"

@interface Testimonalsview ()

@end

@implementation Testimonalsview
@synthesize lblArray,sublblArray,dateArray;
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
    label.text=@"Testimonials";
    tblview.contentInset = UIEdgeInsetsMake(0, 0, 120, 0);
//tblview.contentSize = CGSizeMake(tblview.contentSize.width, tblview.contentSize.height + 300); //and vice versa when keyboard is dismissed

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
//    
//    [self.navigationController.navigationBar setFrame:CGRectMake(0, 0, 320, 74)];
//
//    
//    
//    UIButton *titleLabel = [UIButton buttonWithType:UIButtonTypeCustom];
//    [titleLabel setTitle:@"Testimonials" forState:UIControlStateNormal];
//    titleLabel.font=[UIFont boldSystemFontOfSize:20.0];
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentCenter;
//    titleLabel.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter|UIControlContentHorizontalAlignmentRight;
//    //titleLabel.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
//    titleLabel.frame = CGRectMake(-10,-15, 140, 20);
//    
//    
//    
//    
//    UIView * newView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 20)];
//    [newView addSubview:titleLabel];
//    self.navigationItem.titleView = newView;
//    
//    self.navigationController.navigationBar.hidden=NO;
    lblArray=[[NSMutableArray alloc]init];
    [lblArray addObject:[NSString stringWithFormat:@"Vidya Subramanian"]];
    [lblArray addObject:[NSString stringWithFormat:@"Rajish Raghavan & Sandya Rajish, Mavoor, Calicut"]];
    [lblArray addObject:[NSString stringWithFormat:@"Faseela Sidhique"]];
    [lblArray addObject:[NSString stringWithFormat:@"Laya Rajesh"]];
    [lblArray addObject:[NSString stringWithFormat:@"Saleena Rasheed"]];
    [lblArray addObject:[NSString stringWithFormat:@"Vinitha Pradeep"]];
    [lblArray addObject:[NSString stringWithFormat:@"Pradeep kumar and Manjula"]];
    [lblArray addObject:[NSString stringWithFormat:@"Barkha & Manish (Rajasthan"]];
    
    sublblArray=[[NSMutableArray alloc]init];
    [sublblArray addObject:[NSString stringWithFormat:@"After 8 years, we got a baby girl from almighty through your hands. We’ll be always thankful to Dr.Kunjumoideen and his team at ARMC."]];
    [sublblArray addObject:[NSString stringWithFormat:@"The dedicated team of doctors and supporting staff at ARMC helped us to be blessed with a child. Our whole heart full thanks to ARMC team. God bless."]];
    [sublblArray addObject:[NSString stringWithFormat:@"We have been blessed with a baby girl after the long wait. Heartfelt thanks to Dr. Kunjumoideen and team for their expertise and kind service. We always pray for the ARMC family."]];
    [sublblArray addObject:[NSString stringWithFormat:@"After 4 years of waiting we were blessed with a baby girl. One of the best things at ARMC is the relationship with the staff. They always make us comfortable, happy and confident. The calm atmosphere is another great factor."]];
    [sublblArray addObject:[NSString stringWithFormat:@"We are blessed with a baby after 18 years of marriage with the help of ARMC. The doctors and nursing staff were very kind and friendly to us. Now we feel extremely happy."]];
    [sublblArray addObject:[NSString stringWithFormat:@"After 10 years we are blessed with a baby. Our life is so happy and meaningful. Thanking all Doctor’s and supporting staff at ARMC."]];
    [sublblArray addObject:[NSString stringWithFormat:@"Hope you are doing fine Doctor Kunjimoideen, our love and regards to all the staff at ARMC.The grace of god and your hands in treatment make us to send the Photo our son 'Adithyan' born on 28/10/2010"]];
    [sublblArray addObject:[NSString stringWithFormat:@"We both will be grateful to u for ur right suggestion at right time.Its all bcz of u,on 4th of oct 2010, we got sweet n cute angel in our life…..” Thanks."]];
    dateArray=[[NSMutableArray alloc]init];
    [dateArray addObject:[NSString stringWithFormat:@"November 7, 2013"]];
    [dateArray addObject:[NSString stringWithFormat:@"September 11, 2012"]];
    [dateArray addObject:[NSString stringWithFormat:@""]];
    [dateArray addObject:[NSString stringWithFormat:@""]];
    [dateArray addObject:[NSString stringWithFormat:@""]];
    [dateArray addObject:[NSString stringWithFormat:@""]];
    [dateArray addObject:[NSString stringWithFormat:@"November 30, 2011"]];
    [dateArray addObject:[NSString stringWithFormat:@"November 30, 2011"]];

    // Do any additional setup after loading the view from its nib.
}
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    CGFloat sectionHeaderHeight = 40;
//    if (scrollView.contentOffset.y<=sectionHeaderHeight&&scrollView.contentOffset.y>=0) {
//        scrollView.contentInset = UIEdgeInsetsMake(-scrollView.contentOffset.y, 0, 0, 0);
//    } else if (scrollView.contentOffset.y>=sectionHeaderHeight) {
////        scrollView.contentInset = UIEdgeInsetsMake(-sectionHeaderHeight, 0, 0, 0);
//        scrollView.contentInset = UIEdgeInsetsMake(scrollView.contentOffset.y, 0, 0, 0);
//
//    }
//}


#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [lblArray count];
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
    else
    {
        return cell;
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
    [[UIImage imageNamed:@"txt_bg.png"] drawInRect:CGRectMake(0, 0, 295, 200)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    cell.backgroundColor=[UIColor colorWithPatternImage:image];
    cell.textLabel.textColor=[UIColor whiteColor];
    UIImage *image1 = [UIImage imageNamed:@"default_profile-pic.png"];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
    imageView.frame = CGRectMake(10,12, 70,70);
    [cell.contentView addSubview:imageView];
    
    UIFont * customFont = [UIFont fontWithName:@"Arial" size:17]; //custom font
    NSString * text =[lblArray objectAtIndex:indexPath.row];
    CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(200, 40) lineBreakMode:NSLineBreakByTruncatingTail];
    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(91, 40, labelSize.width, 50)];
    fromLabel.text = text;
    fromLabel.font = customFont;
    fromLabel.numberOfLines = 1;
    fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel.adjustsFontSizeToFitWidth = YES;
    fromLabel.adjustsLetterSpacingToFitWidth = YES;
    fromLabel.minimumScaleFactor = 10.0f/12.0f;
    fromLabel.clipsToBounds = YES;
    fromLabel.backgroundColor = [UIColor clearColor];
    fromLabel.textColor =[UIColor colorWithRed:0.0f/255.0f green:175.0f/255.0f blue:239.0f/255.0f alpha:1.0f];
    fromLabel.textAlignment = NSTextAlignmentLeft;
    [cell.contentView addSubview:fromLabel];
    
    UIFont * customFont1 = [UIFont fontWithName:@"Arial" size:10]; //custom font
    NSString * text1 = [dateArray objectAtIndex:indexPath.row];
    
    CGSize labelSize1 = [text1 sizeWithFont:customFont constrainedToSize:CGSizeMake(100, 40) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(90, 65, labelSize1.width, labelSize1.height)];
    fromLabel1.text = text1;
    fromLabel1.font = customFont1;
    fromLabel1.numberOfLines = 1;
    fromLabel1.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel1.adjustsFontSizeToFitWidth = YES;
    fromLabel1.adjustsLetterSpacingToFitWidth = YES;
    fromLabel1.minimumScaleFactor = 10.0f/12.0f;
    fromLabel1.clipsToBounds = YES;
    fromLabel1.backgroundColor = [UIColor clearColor];
    fromLabel1.textColor =[UIColor colorWithRed:163.0f/255.0f green:163.0f/255.0f blue:163.0f/255.0f alpha:1.0f];
    fromLabel1.textAlignment = NSTextAlignmentLeft;
    [cell.contentView addSubview:fromLabel1];
    UIFont * customFont2 = [UIFont fontWithName:@"Arial" size:15]; //custom font
    NSString * text2 = [sublblArray objectAtIndex:indexPath.row];
    
    CGSize labelSize2 = [text2 sizeWithFont:customFont constrainedToSize:CGSizeMake(280, 150) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel2 = [[UILabel alloc]initWithFrame:CGRectMake(10, 82, labelSize2.width, labelSize2.height)];
    fromLabel2.text = text2;
    fromLabel2.font = customFont2;
    fromLabel2.numberOfLines = 5;
    fromLabel2.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel2.adjustsFontSizeToFitWidth = YES;
    fromLabel2.adjustsLetterSpacingToFitWidth = YES;
    fromLabel2.minimumScaleFactor = 10.0f/12.0f;
    fromLabel2.clipsToBounds = YES;
    fromLabel2.backgroundColor = [UIColor clearColor];
    fromLabel2.textColor = [UIColor blackColor];
    fromLabel2.textAlignment = NSTextAlignmentLeft;
    fromLabel2.textAlignment=NSTextAlignmentJustified;
    [cell.contentView addSubview:fromLabel2];
        [cell.contentView bringSubviewToFront:fromLabel2];

    
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [button addTarget:self
//               action:@selector(aMethod:)
//     forControlEvents:UIControlEventTouchUpInside];
//    [button setTitle:@"Read more" forState:UIControlStateNormal];
//    button.frame = CGRectMake(170, 40, 160.0, 40.0);
//    [cell.contentView addSubview:button];
//    [cell.contentView bringSubviewToFront:button];
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
