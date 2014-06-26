//
//  DescriptionDoctordetailsViewController.m
//  Projectapp
//
//  Created by Enuke New Mac on 09/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import "DescriptionDoctordetailsViewController.h"
#import "EmployeeObject.h"
#import <sqlite3.h>

@interface DescriptionDoctordetailsViewController ()

@end

@implementation DescriptionDoctordetailsViewController
@synthesize imgview,labelname,labeldesc1,labeldesc2,labeldesc3,labeldesc4,_sqliteData,index1,labeltop,detailemp;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)goback:(id)sender
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self getSQLiteData];
    if(detailemp!=nil)
    {
    EmployeeObject *emp=detailemp;

labelname.text=[NSString stringWithFormat:@"%@",emp.EmpName];
    labeldesc1.text=[NSString stringWithFormat:@"%@",emp.EmpDesignation];
    labeldesc2.text=[NSString stringWithFormat:@"%@",emp.EmpDescription];
    labeldesc3.text=[NSString stringWithFormat:@"About %@",emp.EmpName];
    labeltop.text=[NSString stringWithFormat:@"Employee Team"];
//    [labeldesc4 stringByEvaluatingJavaScriptFromString:
//     [NSString stringWithFormat:@"%@",emp.EmpViewDetails]];
//labeldesc4.text=[NSString stringWithFormat:@"%@",emp.EmpViewDetails];
    
    [labeldesc4 loadHTMLString:emp.EmpViewDetails baseURL:nil];

    imgview.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",emp.EmpImage]];
    }

    // Do any additional setup after loading the view from its nib.
}
//
//-(void)getSQLiteData
//{
//    _sqliteData = [[NSMutableArray alloc] init];
//    NSMutableArray *myDatanew = [[NSMutableArray alloc]initWithObjects:@"Calicut",@"Thrissur",@"Kannur",@"Pallakad",@"Mangalore",@"Dubai",@"Doha", nil];
//    NSString *location=[myDatanew objectAtIndex:index1];
//    sqlite3 *database;
//    NSArray  *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *docsPath = [paths objectAtIndex:0];
//    NSString *dbPath = [docsPath stringByAppendingPathComponent:@"ARMCApplication.sqlite"];
//    
//    if (sqlite3_open([dbPath UTF8String], &database) == SQLITE_OK) {
//        const char *sql = "select * from Team_Details where LocationName = ?";
//        sqlite3_stmt *selectStatement;
//        if(sqlite3_prepare_v2(database, sql, -1, &selectStatement, NULL) == SQLITE_OK) {
//            sqlite3_bind_text(selectStatement, 1, [location UTF8String], -1, SQLITE_TRANSIENT);
//            while(sqlite3_step(selectStatement) == SQLITE_ROW) {
//                EmployeeObject *employeeObject = [[EmployeeObject alloc] init];
//                employeeObject.LocationName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 0)];
//                employeeObject.EmpName = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 1)];
//                employeeObject.EmpImage = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 2)];
//                employeeObject.EmpDesignation = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 3)];
//                employeeObject.EmpDescription = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 4)];
//                employeeObject.EmpViewDetails = [NSString stringWithUTF8String:(char *)sqlite3_column_text(selectStatement, 5)];
//                [_sqliteData addObject:employeeObject];
//            }
//        }
//    }
//    sqlite3_close(database);
//}
//
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
