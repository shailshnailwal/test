//
//  Descriptiomteam.m
//  Projectapp
//
//  Created by Enuke New Mac on 06/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "Descriptiomteam.h"
#import <sqlite3.h>
#import "EmployeeObject.h"
#import "DescriptionDoctordetailsViewController.h"
@interface Descriptiomteam ()

@end

@implementation Descriptiomteam
@synthesize tblview,_sqliteData,labeltop,indexselect;
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
    
    NSMutableArray *myDatanew = [[NSMutableArray alloc]initWithObjects:
                                 @"Calicut",@"Thrissur",@"Kanpur",@"Palakad",@"Mangalore",@"Dubai",@"Doha", nil];
    labeltop.text=[NSString stringWithFormat:@"Team %@",[myDatanew objectAtIndex:indexselect]];

    [self createCopyOfDatabaseIfNeeded];

    [self getSQLiteData];
    // Do any additional setup after loading the view from its nib.
}
-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [_sqliteData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    
    NSString *stringForCell;
    //    if (indexPath.section == 0) {
    //        stringForCell= [myData objectAtIndex:indexPath.row];
    //
    //    }
    //    else if (indexPath.section == 1){
    //        stringForCell= [myData objectAtIndex:indexPath.row+ [myData count]/2];
    //
    //    }
    
    EmployeeObject *emp=[_sqliteData objectAtIndex:indexPath.row];
    [cell.textLabel setText:stringForCell];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"txt_bg.png"] drawInRect:CGRectMake(0, 0, 295, 100)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    cell.backgroundColor=[UIColor colorWithPatternImage:image];
    cell.textLabel.textColor=[UIColor whiteColor];
    UIImage *image11 = [UIImage imageNamed:@"team-pic-holder.png"];
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image11];
    imageView1.frame = CGRectMake(0,0, 100,100);
    [cell.contentView addSubview:imageView1];
    
    UIImage *image1 = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",emp.EmpImage]];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image1];
    imageView.frame = CGRectMake(10,8, 80,80);
    [cell.contentView addSubview:imageView];
   
    
//    UIImageView *imageView11 = [[UIImageView alloc] init];
//    imageView11.backgroundColor=[UIColor colorWithRed:233.0/255.0 green:233.0/255.0 blue:233.0/255.0 alpha:255.0/255.0];
//    imageView11.frame = CGRectMake(10,8, 5,5);
//    [cell.contentView addSubview:imageView11];

    UIFont * customFont = [UIFont fontWithName:@"Arial" size:15]; //custom font
    NSString * text = @"Hands on Workshop CME for doctors";
    
    CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(200, 50) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(105, 9, labelSize.width, labelSize.height)];
    fromLabel.text = [NSString stringWithFormat:@"%@",emp.EmpName];
    fromLabel.font = customFont;
    fromLabel.numberOfLines = 2;
    fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel.adjustsFontSizeToFitWidth = YES;
    fromLabel.adjustsLetterSpacingToFitWidth = YES;
    fromLabel.minimumScaleFactor = 10.0f/12.0f;
    fromLabel.clipsToBounds = YES;
    fromLabel.backgroundColor = [UIColor clearColor];
    fromLabel.textColor =  [UIColor colorWithRed:0.0/255.0 green:175.0/255.0 blue:239.0/255.0 alpha:255.0/255.0];
    fromLabel.textAlignment = NSTextAlignmentLeft;
    [cell.contentView addSubview:fromLabel];
    
    UIFont * customFont1 = [UIFont fontWithName:@"Arial" size:8]; //custom font
    NSString * text1 = [NSString stringWithFormat:@"%@",emp.EmpDesignation];
    
    CGSize labelSize1 = [text1 sizeWithFont:customFont1 constrainedToSize:CGSizeMake(200, 60) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 55, labelSize1.width, labelSize1.height)];
    fromLabel1.text = text1;
    fromLabel1.font = customFont1;
    fromLabel1.numberOfLines = 1;
    fromLabel1.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel1.adjustsFontSizeToFitWidth = YES;
    fromLabel1.adjustsLetterSpacingToFitWidth = YES;
    fromLabel1.minimumScaleFactor = 10.0f/12.0f;
    fromLabel1.clipsToBounds = YES;
    fromLabel1.backgroundColor = [UIColor clearColor];
    fromLabel1.textColor = [UIColor colorWithRed:163.0/255.0 green:163.0/255.0  blue:163.0/255.0  alpha:255.0/255.0];
    fromLabel1.textAlignment = NSTextAlignmentCenter;
    [cell.contentView addSubview:fromLabel1];
    
    UIFont * customFont11 = [UIFont fontWithName:@"Arial" size:10]; //custom font
    
    CGSize labelSize11 = [text sizeWithFont:customFont11 constrainedToSize:CGSizeMake(200, 60) lineBreakMode:NSLineBreakByTruncatingTail];
    
    UILabel *fromLabel11 = [[UILabel alloc]initWithFrame:CGRectMake(105, 70, labelSize11.width, labelSize11.height)];
    fromLabel11.text = [NSString stringWithFormat:@"%@",emp.EmpDescription];
    fromLabel11.font = customFont11;
    fromLabel11.numberOfLines =1;
    fromLabel11.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    fromLabel11.adjustsFontSizeToFitWidth = YES;
    fromLabel11.adjustsLetterSpacingToFitWidth = YES;
    fromLabel11.minimumScaleFactor = 10.0f/12.0f;
    fromLabel11.clipsToBounds = YES;
    fromLabel11.backgroundColor = [UIColor clearColor];
    fromLabel11.textColor = [UIColor colorWithRed:163.0/255.0 green:163.0/255.0  blue:163.0/255.0  alpha:255.0/255.0];
    fromLabel11.textAlignment = NSTextAlignmentLeft;
    [cell.contentView addSubview:fromLabel11];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(aMethod:)
     forControlEvents:UIControlEventTouchUpInside];
    button.tag=indexPath.row;
    [button setTitle:@"View" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont fontWithName:@"Arial" size:10];
     button.backgroundColor=[UIColor colorWithRed:0.0/255.0 green:175.0/255.0 blue:239.0/255.0 alpha:1.0];
    button.frame = CGRectMake(230, 40, 60.0, 30.0);
    [cell.contentView addSubview:button];
    [cell.contentView bringSubviewToFront:button];
    [self.view bringSubviewToFront:cell.contentView];
    return cell;
}
- (void)aMethod:(id)sender
{
    UIButton *buttonClicked = (UIButton *)sender;

    DescriptionDoctordetailsViewController *root=[[DescriptionDoctordetailsViewController alloc]initWithNibName:@"DescriptionDoctordetailsViewController" bundle:nil];
    EmployeeObject *empobj=[_sqliteData objectAtIndex:buttonClicked.tag];
    root.detailemp=empobj;
    [self.navigationController pushViewController:root animated:NO];

}
-(NSString *)getDatabasePath
{
    return [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"ARMCApplication.sqlite"];
}

-(void)getSQLiteData
{
    NSMutableArray *myDatanew = [[NSMutableArray alloc]initWithObjects:@"Calicut",@"Thrissur",@"Kannur",@"Pallakad",@"Mangalore",@"Dubai",@"Doha", nil];
    NSString *location=[myDatanew objectAtIndex:indexselect];
    _sqliteData = [[NSMutableArray alloc] init];
    sqlite3 *database;
    NSArray  *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docsPath = [paths objectAtIndex:0];
    NSString *dbPath = [docsPath stringByAppendingPathComponent:@"ARMCApplication.sqlite"];

    if (sqlite3_open([dbPath UTF8String], &database) == SQLITE_OK) {
        const char *sql = "select * from Team_Details where LocationName = ?";
        sqlite3_stmt *selectStatement;
        if(sqlite3_prepare_v2(database, sql, -1, &selectStatement, NULL) == SQLITE_OK) {
            sqlite3_bind_text(selectStatement, 1, [location UTF8String], -1, SQLITE_TRANSIENT);
            while(sqlite3_step(selectStatement) == SQLITE_ROW) {
                EmployeeObject *employeeObject = [[EmployeeObject alloc] init];
                employeeObject.LocationName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 0)];
                employeeObject.EmpName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 1)];
                employeeObject.EmpImage = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 2)];
                   employeeObject.EmpDesignation = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 3)];
                   employeeObject.EmpDescription = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 4)];
                   employeeObject.EmpViewDetails = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 5)];
                [_sqliteData addObject:employeeObject];
            }
        }
    }
    sqlite3_close(database);
}


- (void)createCopyOfDatabaseIfNeeded {
    // First, test for existence.
    BOOL success;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    // Database filename can have extension db/sqlite.
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *appDBPath = [documentsDirectory stringByAppendingPathComponent:@"ARMCApplication.sqlite"];
    
    success = [fileManager fileExistsAtPath:appDBPath];
    if (success){
        return;
    }
    // The writable database does not exist, so copy the default to the appropriate location.
    NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"ARMCApplication.sqlite"];
    success = [fileManager copyItemAtPath:defaultDBPath toPath:appDBPath error:nil];
//    if (!success) {
//        NSAssert1(0, @"Failed to create writable database file with message '%@'.", [error localizedDescription]);
//    }
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
