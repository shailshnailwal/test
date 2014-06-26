//
//  DescriptionDoctordetailsViewController.h
//  Projectapp
//
//  Created by Enuke New Mac on 09/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeObject.h"
@interface DescriptionDoctordetailsViewController : UIViewController
{
    IBOutlet UIImageView *imgview;
    IBOutlet UILabel *labeltop;
    IBOutlet UILabel *labelname;
    IBOutlet UILabel *labeldesc1;
    IBOutlet UILabel *labeldesc2;
    IBOutlet UILabel *labeldesc3;
    IBOutlet UIWebView *labeldesc4;
    NSMutableArray *_sqliteData;
    EmployeeObject *detailemp;
    int index1;
}
-(IBAction)goback:(id)sender;
@property(nonatomic,strong)IBOutlet UIImageView *imgview;
@property(nonatomic,retain)  IBOutlet UILabel *labelname;
@property(nonatomic,retain)  IBOutlet UILabel *labeldesc1;
@property(nonatomic,retain)  IBOutlet UILabel *labeldesc2;
@property(nonatomic,retain)  IBOutlet UILabel *labeldesc3;
@property(nonatomic,retain)  IBOutlet UIWebView *labeldesc4;
@property(nonatomic,retain)EmployeeObject *detailemp;
@property(nonatomic,strong) NSMutableArray *_sqliteData;
@property(nonatomic,assign)int index1;
@property(nonatomic,retain)IBOutlet UILabel *labeltop;

-(void)getSQLiteData;

@end
