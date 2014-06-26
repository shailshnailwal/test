//
//  Rootviewcontroller.m
//  Projectapp
//
//  Created by Enuke New Mac on 16/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Rootviewcontroller.h"
#import "NewsViewcontroller.h"
#import "Testimonalsview.h"
#import "NewsletterView.h"
#import "FeedbackView.h"
#import "GalleryView.h"
#import "NewAppointment.h"
#import "Yourappointment.h"
#import "InformationViewController.h"
#import "Locationdesc.h"
#import "PDfViewer.h"
#import "Descriptiomteam.h"
#import "LoginViewController.h"
#import "WebViewController.h"
@interface Rootviewcontroller ()
{
    UIViewController * _topViewController;
    UIBarButtonItem *item ;
    NSArray *arrImages;
    BOOL _wrap;
    NSArray *arrTexts;

    BOOL IsTap;
    
}
@end

@implementation Rootviewcontroller
@synthesize carousel,imgviewlog;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    
    return 5;
}



- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
UILabel *label = nil;
    UIImageView *view1=nil;
    UIImageView *view2=nil;

    //create new view if no view is available for recycling
//    if (view == nil)
//    {
        view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
//        view.contentMode = UIViewContentModeTop;

//        view.backgroundColor=[UIColor redColor];
        ((UIImageView *)view).image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[arrImages objectAtIndex:index]]];
      view1 = [[UIImageView alloc] initWithFrame:CGRectMake(60, 170, 190, 170)];
        view1.contentMode = UIViewContentModeScaleAspectFill;
//    view2 = [[UIImageView alloc] initWithFrame:CGRectMake(120, 547, 80, 21)];
//    view2.image=[UIImage imageNamed:@"Logo.png"];

        view1.image=[UIImage imageNamed:@"Logo.png"];
        [view addSubview:view1];
//    [view addSubview:view2];

//        view.contentMode = UIViewContentModeCenter;
        label = [[UILabel alloc] initWithFrame:CGRectMake(55, 395, 200, 100)];
    if([[UIDevice currentDevice]userInterfaceIdiom]==UIUserInterfaceIdiomPhone)
    {
        NSLog(@"height is %f",[[UIScreen mainScreen] bounds].size.height);
        if ([[UIScreen mainScreen] bounds].size.height == 568)
        {
            
            [label setFrame:CGRectMake(55, 395, 200, 100)];
        }
        else
        {
            [self.descimgview setFrame:CGRectMake(20, 76, 289, 220)];
            [myTableView setFrame:CGRectMake(20, 290, 291, 270)];
            [label setFrame:CGRectMake(55, 360, 200, 100)];

            //iphone 3.5 inch screen
        }
    }
    else
    {
        [label setFrame:CGRectMake(55, 360, 200, 100)];

        //[ipad]
    }
        label.backgroundColor = [UIColor clearColor];
        label.textColor=[UIColor whiteColor];
        label.textAlignment = UITextAlignmentCenter;
//        label.font = [label.font  :20];
        [label setFont:[UIFont fontWithName:@"Arial-BoldMT" size:25]];
        label.tag = 1;
       
        [view addSubview:label];
//    }
//    else
//    {
//        //get a reference to the label in the recycled view
//        label = (UILabel *)[view viewWithTag:1];
//    }

    label.text = [NSString stringWithFormat:@"%@",[arrTexts objectAtIndex:index]];
    [self.carousel bringSubviewToFront:label];
    [self.view bringSubviewToFront:label];
//    [self.carousel bringSubviewToFront:view1];
//    [self.view bringSubviewToFront:view1];
    return view;
}


- (UIView *)carousel:(iCarousel *)carousel placeholderViewAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
//    UILabel *label = nil;
//    
//    //create new view if no view is available for recycling
//    if (view == nil)
//    {
//        //don't do anything specific to the index within
//        //this `if (view == nil) {...}` statement because the view will be
//        //recycled and used with other index values later
//        view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 400.0f)];
//        view.backgroundColor=[UIColor greenColor];
//        
//        ((UIImageView *)view).image = [UIImage imageNamed:@"1.about-us.png"];
//        view.contentMode = UIViewContentModeCenter;
//        
//        label = [[UILabel alloc] initWithFrame:view.bounds];
//        label.backgroundColor = [UIColor clearColor];
//        label.textAlignment = NSTextAlignmentCenter;
//        label.font = [label.font fontWithSize:50.0f];
//        label.tag = 1;
//        [view addSubview:label];
//    }
//    else
//    {
//        //get a reference to the label in the recycled view
//        label = (UILabel *)[view viewWithTag:1];
//    }
//    
//    label.text = (index == 0)? @"[": @"]";
    
    return nil;
}


- (CGFloat)carousel:(iCarousel *)_carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    //customize carousel display
    switch (option)
    {
        case iCarouselOptionWrap:
        {
            //normally you would hard-code this to YES or NO
            return YES;
        }
        case iCarouselOptionSpacing:
        {
            //add a bit of spacing between the item views
            return value * 1.01f;
        }
        case iCarouselOptionFadeMax:
        {
            if (carousel.type == iCarouselTypeCustom)
            {
                //set opacity based on distance from camera
                return 0.4f;
            }
            return value;
        }
        default:
        {
            return value;
        }
    }
}

- (CATransform3D)carousel:(iCarousel *)_carousel itemTransformForOffset:(CGFloat)offset baseTransform:(CATransform3D)transform
{
    //implement 'flip3D' style carousel
    transform = CATransform3DRotate(transform, M_PI / 8.0f, 0.0f, 1.0f, 0.0f);
    return CATransform3DTranslate(transform, 0.0f, 0.0f, offset * carousel.itemWidth);
}


- (void)carousel:(iCarousel *)carousel didSelectItemAtIndex:(NSInteger)index
{
    [_pageControl setCurrentPage:index];
    NSLog(@"Tapped view number----- %d", index);
    
    if (IsTap) {
        [self ChngeViewController:index];
        // [self showview];
        [self performSelectorOnMainThread:@selector(showview) withObject:nil waitUntilDone:YES];
        //[carousel scrollToItemAtIndex:index animated:YES];
        //  IsTap=NO;
    }
    
    
    
}

-(void)carouselWillBeginScrollingAnimation:(iCarousel *)carousel{
    NSLog(@"carouselWillBeginScrollingAnimation view IsTap--- %d", IsTap);
    
}

-(void)carouselWillBeginDragging:(iCarousel *)carousel{
    IsTap=NO;
    NSLog(@"carouselWillBeginDragging view IsTap: %d", IsTap);
}

- (void)carouselDidEndDragging:(iCarousel *)carousel willDecelerate:(BOOL)decelerate{
    //IsTap= !decelerate;
    NSLog(@"carouselDidEndDragging view decelerate: %d", decelerate);
    
}
-(void)carouselDidEndDecelerating:(iCarousel *)carousel{
    IsTap= YES;
    NSLog(@"carouselDidEndDecelerating view IsTap: %d", IsTap);
}

- (void)carouselDidEndScrollingAnimation:(iCarousel *)carousel{
    _wrap=YES;
    [_pageControl setCurrentPage:carousel.currentItemIndex];
    IsTap= YES;
    NSLog(@"carouselDidEndScrollingAnimation view IsTap: %d", IsTap);
}

-(IBAction)menuView:(id)sender{
    UIButton *btn=(UIButton*)sender;
    LoginViewController *root=[[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
    [self.navigationController pushViewController:root animated:NO];

//    if ([sender isSelected]) {
//        [btn setImage:[UIImage imageNamed:@"menu.png"] forState:UIControlStateNormal];
//        [btn setSelected:NO];
//    } else {
//        [btn setImage:[UIImage imageNamed:@"cross_icon.png"] forState:UIControlStateSelected];
//        [btn setSelected:YES];
//    }
}
-(void)showview{
    self.navigationItem.leftBarButtonItem=item;
    self.navigationController.navigationBar.hidden=YES;

    [UIView animateWithDuration:1.0f animations:^{
        self.imgViewTop.transform =CGAffineTransformMakeTranslation(0, -self.imgViewTop.frame.size.height);
        self.viewchildController.transform =CGAffineTransformMakeTranslation(0, 568);
//        self.view.transform =CGAffineTransformMakeTranslation(0, 568);

        //      self.viewScrl.transform =CGAffineTransformMakeTranslation(0, 0);
        self.carousel.transform =CGAffineTransformMakeTranslation(0, 568);
        // [self.viewScrl setTransform:CGAffineTransformScale(t, 0.6, 0.6) ];
        
    } completion:^(BOOL finished) {
//        myTableView.hidden=NO;
        
        [self.view bringSubviewToFront:myTableView];
 
    }];
}

-(void)ChngeViewController:(NSInteger)index{
   
    //    [view addSubview:view2];
    

    if (!_wrap) {
        return;
    }
    [self.view bringSubviewToFront:imgviewlog];    _wrap=NO;
    if (index==0) {
        self.descimgview.image=[UIImage imageNamed:@"AboutUs.png"];
        self.descnavlabel.text=@"About Us";
        [myData removeAllObjects];
        myData = [[NSMutableArray alloc]initWithObjects:
                  @"News",@"Testimonials",@"Gallery",
                  @"Newsletters",@"Feedback", nil];
        _descnavlabel.textAlignment=UITextAlignmentLeft;

        [myTableView reloadData];

        // Do any additional setup after loading the view from its nib.
        //_pageControl.frame = CGRectMake(0, 0, 200, 300);

//        FirstViewController *obj =[[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:[NSBundle mainBundle]];
//        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:obj];
//        [self setTopViewController:nav];
        //        obj.view.center=self.viewchildController.center;
        //      //  [self addChildViewController:obj];
        //        [self.viewchildController addSubview:obj.view];
        
    }else if (index==1){
        self.descimgview.image=[UIImage imageNamed:@"appointment.png"];
        self.descnavlabel.text=@"Appointment";
        [myData removeAllObjects];
        myData = [[NSMutableArray alloc]initWithObjects:
                  @"New Appointment",@"Reports",
                  @"My Queue",@"Information for Patients", nil];// Do any additional setup after loading the view from its nib.
        _descnavlabel.textAlignment=UITextAlignmentLeft;

        [myTableView reloadData];
        //_pageControl.frame = CGRectMake(0, 0, 200, 300);

//        secondViewController *obj =[[secondViewController alloc]initWithNibName:@"secondViewController" bundle:[NSBundle mainBundle]];
//        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:obj];
//        [self setTopViewController:nav];
        //        obj.view.center=self.viewchildController.center;
        //        [self addChildViewController:obj];
        
    }else if (index==2){
        self.descimgview.image=[UIImage imageNamed:@"Services.png"];
        self.descnavlabel.text=@"Services";
        [myData removeAllObjects];
        _descnavlabel.textAlignment = UITextAlignmentLeft;

        myData = [[NSMutableArray alloc]initWithObjects:
                  @"Infertility",@"IUI",@"IVF – ICSI",
                  @"Special Techniques", nil];// Do any additional setup after loading the view from its nib.
        //_pageControl.frame = CGRectMake(0, 0, 200, 300);
        [myTableView reloadData];

//        ThirdViewController *obj =[[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:[NSBundle mainBundle]];
//        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:obj];
//        [self setTopViewController:nav];
        
        //        obj.view.center=self.viewchildController.center;
        //        [self addChildViewController:obj];
        
    }else if (index==3){
        self.descimgview.image=[UIImage imageNamed:@"location.png"];
        self.descnavlabel.text=@"ARMC'S Location";
        [myData removeAllObjects];
       //        _descnavlabel.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
            
            _descnavlabel.textAlignment=UITextAlignmentLeft;
            
        myData = [[NSMutableArray alloc]initWithObjects:
                  @"CALICUT",@"THRISSUR",@"KANNUR",@"PALAKKAD",@"MANGALORE",@"DUBAI",@"DOHA", nil];// Do any additional setup after loading the view from its nib.
        //_pageControl.frame = CGRectMake(0, 0, 200, 300);
        [myTableView reloadData];

//        FirstViewController *obj =[[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:[NSBundle mainBundle]];
//        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:obj];
//        [self setTopViewController:nav];
        
        //        obj.view.center=self.viewchildController.center;
        //        [self addChildViewController:obj];
        
    }else if (index==4){
        self.descimgview.image=[UIImage imageNamed:@"team.png"];
        self.descnavlabel.text=@"Our Team";
        [myData removeAllObjects];
        _descnavlabel.textAlignment=UITextAlignmentLeft;

        myData = [[NSMutableArray alloc]initWithObjects:
                  @"Team Calicut",@"Team Thrissur",@"Team Kannur",@"Team Palakkad",@"Team Mangalore",@"Team Dubai",@"Team Doha",nil];// Do any additional setup after loading the view from its nib.
        //_pageControl.frame = CGRectMake(0, 0, 200, 300);
        [myTableView reloadData];

//        secondViewController *obj =[[secondViewController alloc]initWithNibName:@"secondViewController" bundle:[NSBundle mainBundle]];
//        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:obj];
//        [self setTopViewController:nav];
        
        //        obj.view.center=self.viewchildController.center;
        //        [self addChildViewController:obj];
        
    }else if (index==5){
//        myData = [[NSMutableArray alloc]initWithObjects:
//                  @"Data 1 in array",@"Data 2 in array",@"Data 3 in array",
//                  @"Data 4 in array",@"Data 5 in array",@"Data 5 in array",
//                  @"Data 6 in array",@"Data 7 in array",@"Data 8 in array",
//                  @"Data 9 in array", nil];// Do any additional setup after loading the view from its nib.
        //_pageControl.frame = CGRectMake(0, 0, 200, 300);

//        ThirdViewController *obj =[[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:[NSBundle mainBundle]];
//        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:obj];
//        [self setTopViewController:nav];
        
        //        obj.view.center=self.viewchildController.center;
        //     [self addChildViewController:obj];
        
    }
    
    [self showview];
}
-(IBAction)closeView:(id)sender {
    [self hideView];
}
-(void)hideView{
//    myTableView.hidden=YES;
    self.navigationItem.leftBarButtonItem=nil;
    [UIView animateWithDuration:1.0f animations:^{
        self.viewchildController.transform =CGAffineTransformMakeTranslation(0, 0);
        //   self.viewchildController.frame=CGRectMake(0, -568, 320, 568);
        self.imgViewTop.transform =CGAffineTransformMakeTranslation(0, 0);
        
        self.carousel.transform =CGAffineTransformMakeTranslation(0, 0);
    } completion:^(BOOL finished) {
        
    }];
}
-(IBAction)Navigate{
    
//    FirstViewController *obj =[[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:[NSBundle mainBundle]];
//    [self.navigationController pushViewController:obj animated:YES];
}

#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [myData count];
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
    if (indexPath.section == 0) {
        stringForCell= [myData objectAtIndex:indexPath.row];
        
    }
    else if (indexPath.section == 1){
        stringForCell= [myData objectAtIndex:indexPath.row+ [myData count]/2];
        
    }
    [cell.textLabel setText:stringForCell];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"category_list_bg.png"] drawInRect:CGRectMake(0, 0, 287, 45)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    cell.backgroundColor=[UIColor colorWithPatternImage:image];
    cell.textLabel.textColor=[UIColor whiteColor];
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

//abhi123456
//123456
//abhipat86
//123456
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%d Row:%d selected and its data is %@",
          indexPath.section,indexPath.row,cell.textLabel.text);
    NSString *strdata=[myData objectAtIndex:indexPath.row];
    if ([strdata isEqualToString:@"News"]) {
        NewsViewcontroller *root=[[NewsViewcontroller alloc]initWithNibName:@"NewsViewcontroller" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
            }
    if ([strdata isEqualToString:@"Testimonials"]) {
        Testimonalsview *root=[[Testimonalsview alloc]initWithNibName:@"Testimonalsview" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
    }
    if ([strdata isEqualToString:@"Newsletters"]) {
        NewsletterView *root=[[NewsletterView alloc]initWithNibName:@"NewsletterView" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
    }
    if ([strdata isEqualToString:@"Feedback"]) {
        FeedbackView *root=[[FeedbackView alloc]initWithNibName:@"FeedbackView" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
    }
    if ([strdata isEqualToString:@"Gallery"]) {
        GalleryView *root=[[GalleryView alloc]initWithNibName:@"GalleryView" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
    }
    if ([strdata isEqualToString:@"New Appointment"]) {
        NSUserDefaults *fetchDefaults = [NSUserDefaults standardUserDefaults];
        
        // getting an NSString
        NSString *message = [fetchDefaults objectForKey:@"loginornot"];
        if([message isEqualToString:@"YES"])
        {
        NewAppointment *root=[[NewAppointment alloc]initWithNibName:@"NewAppointment" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
        }
        else
        {
            LoginViewController *root=[[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:nil];
            [self.navigationController pushViewController:root animated:NO];

        }
    }
    if ([strdata isEqualToString:@"Your Appointment"]) {
        Yourappointment *root=[[Yourappointment alloc]initWithNibName:@"Yourappointment" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
    }
    if ([strdata isEqualToString:@"Information for Patients"]) {
        InformationViewController *root=[[InformationViewController alloc]initWithNibName:@"InformationViewController" bundle:nil];
        [self.navigationController pushViewController:root animated:NO];
    }
    
    if ([strdata isEqualToString:@"Infertility"]) {
        WebViewController *root=[[WebViewController alloc]initWithNibName:@"WebViewController" bundle:nil];
        root.index1=indexPath.row;
        
        [self.navigationController pushViewController:root animated:NO];

    }
    if ([strdata isEqualToString:@"IUI"]) {
        WebViewController *root=[[WebViewController alloc]initWithNibName:@"WebViewController" bundle:nil];
        root.index1=indexPath.row;
        
        [self.navigationController pushViewController:root animated:NO];
        
    }

    if ([strdata isEqualToString:@"IVF – ICSI"]) {
        WebViewController *root=[[WebViewController alloc]initWithNibName:@"WebViewController" bundle:nil];
        root.index1=indexPath.row;
        
        [self.navigationController pushViewController:root animated:NO];
        
    }
    if ([strdata isEqualToString:@"Special Techniques"]) {
        WebViewController *root=[[WebViewController alloc]initWithNibName:@"WebViewController" bundle:nil];
        root.index1=indexPath.row;
        
        [self.navigationController pushViewController:root animated:NO];
        
    }
    NSMutableArray *myDatanew1 = [[NSMutableArray alloc]initWithObjects:
                                 @"Team Calicut",@"Team Thrissur",@"Team Kannur",@"Team Palakkad",@"Team Mangalore",@"Team Dubai",@"Team Doha", nil];
    if ([myDatanew1 containsObject:strdata]) {
        Descriptiomteam *root=[[Descriptiomteam alloc]initWithNibName:@"Descriptiomteam" bundle:nil];
        root.indexselect=indexPath.row;
        [self.navigationController pushViewController:root animated:NO];
        
    }
    
        NSMutableArray *myDatanew = [[NSMutableArray alloc]initWithObjects:
              @"CALICUT",@"THRISSUR",@"KANNUR",@"PALAKKAD",@"MANGALORE",@"DUBAI",@"DOHA", nil];
    if ([myDatanew containsObject:strdata]) {
        for(int k=0;k<[myDatanew count];k++)
        {
if([[myDatanew objectAtIndex:k] isEqualToString:strdata])
{
    Locationdesc *root=[[Locationdesc alloc]initWithNibName:@"Locationdesc" bundle:nil];
    root.index=k;
    [self.navigationController pushViewController:root animated:NO];
}
        }
        
    }
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.wantsFullScreenLayout = YES;
    NSLocale *locale = [NSLocale currentLocale];
    NSString *countryCode = [locale objectForKey: NSLocaleCountryCode];
    self.viewchildController.frame=CGRectMake(0, -580, 320, 568);
    [self.view addSubview:self.viewchildController];
    [self.viewchildController addSubview:myTableView];
    UIImageView *view2 = [[UIImageView alloc] initWithFrame:CGRectMake(120, 547, 80, 21)];
    //    view2.image=[UIImage imageNamed:@"Logo.png"];
    
    view2.image=[UIImage imageNamed:@"botlogo.png"];
    [self.viewchildController  addSubview:view2];
arrImages= [NSArray arrayWithObjects:@"1aboutus.png",@"2appointment.png",@"3services.png",@"4location.png",@"5team.png", nil];    // Do any additional setup after loading the view from its nib.
    arrTexts= [NSArray arrayWithObjects:@"About Us",@"Appointment",@"Services",@"Locations",@"Our Team", nil];
    myData = [[NSMutableArray alloc]initWithObjects:
              @"News",@"Testimonials",@"Gallery",
              @"Newsletters",@"Feedback", nil];
    myTableView.contentInset = UIEdgeInsetsMake(0, 0, 120, 0);

}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=YES;

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
