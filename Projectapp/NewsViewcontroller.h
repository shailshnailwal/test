//
//  NewsViewcontroller.h
//  Projectapp
//
//  Created by Enuke New Mac on 21/05/14.
//  Copyright (c) 2014 Enuke New Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewcontroller : UIViewController<UITableViewDataSource,UITableViewDataSource>
{
    IBOutlet UITableView *tblview;
IBOutlet UILabel *label;
}
-(IBAction)goback:(id)sender;
- (void)aMethod:(id)sender;
@property (nonatomic,strong) IBOutlet UILabel *label;

@end
