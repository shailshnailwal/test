//
//  InformationViewController.h
//  Projectapp
//
//  Created by Enuke New Mac on 03/06/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InformationViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIAlertViewDelegate>
{
    IBOutlet UITableView *tblview;
    NSArray *myData;
    IBOutlet UILabel *label;

}
@property(nonatomic,strong)IBOutlet UITableView *tblview;
@property(nonatomic,strong)NSArray *myData;
@property(nonatomic,strong)NSArray *myData1;
@property (nonatomic,strong) IBOutlet UILabel *label;

@end
